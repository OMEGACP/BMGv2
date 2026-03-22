using QuestPDF.Drawing;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
using QuestPDF.Infrastructure;
using QuestPDFTestConsoleApp.Domain;
using QuestPDFTestConsoleApp.Parsing;
using System.Reflection;
using System.Text.RegularExpressions;


namespace QuestPDFTestConsoleApp
{    
    internal class Program
    {
        static void Main(string[] args)
        {
            // set your license here:
            QuestPDF.Settings.License = LicenseType.Community;
            //FontManager.RegisterFontFromEmbeddedResource("YourApplication.Resources.Fonts.Hard Grunge.ttf");

            var baseDir = AppContext.BaseDirectory;
            var samples = Path.Combine(baseDir, "TestData");

            var fontPath = Path.Combine(baseDir, "Media\\Hard Grunge.ttf");
            using var fontStream = File.OpenRead(fontPath);
            FontManager.RegisterFontWithCustomName("Hard Grunge", fontStream);

            try
            {
                var xmls = new[] { 
                    File.ReadAllText(Path.Combine(samples, "BMGv2.gst")),
                    File.ReadAllText(Path.Combine(samples, "Generic Henchmen.cat")),
                    File.ReadAllText(Path.Combine(samples, "Free Agents.cat")),
                    File.ReadAllText(Path.Combine(samples, "Shared Police Forces.cat")),
                    File.ReadAllText(Path.Combine(samples, "The Brave and the Bold.cat")),
                    File.ReadAllText(Path.Combine(samples, "Bane.cat")),
                    File.ReadAllText(Path.Combine(samples, "LeagueOfAssassins.cat")),
                };

                var models = BmgCharacterParser.ParseFromXml(xmls);
                //var model = models.Last();
                Test(models);

                //var model = models.First();
                //Console.WriteLine($"Name: {model.Name}");
                //Console.WriteLine($"Alias: {model.Alias}");
                //Console.WriteLine($"Strength: {model.Strength}");
                //Console.WriteLine($"Reputation: {model.Reputation}");
                //Console.WriteLine($"Affiliated Crews: {string.Join(", ", model.ProFactions)}");
                //Console.WriteLine($"Rivals: {string.Join(", ", model.ContraFactions)}");
                //Console.WriteLine($"Rank: {string.Join(", ", model.Rank)}");

                //Console.WriteLine("Weapons:");
                //foreach (var w in model.Weapons)
                //{
                //    Console.WriteLine($"- {w.Name} | Damage={w.Damage}, ROF={w.ROF}, Ammo={w.Ammo}");
                //    Console.WriteLine($"  Traits: {string.Join(", ", w.WeaponTraits)}");
                //    Console.WriteLine($"  Rules:  {string.Join(", ", w.WeaponRules)}");
                //}
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            //Console.WriteLine("Hello, World!");
        }

        // ---------- Einheiten: mm -> pt ----------
        static float Pt(double mm) => (float)(mm * 72.0 / 25.4);

        public static string ConvertDamage(string input)
        {
            // Regex: Zahl + Bezeichnung (Alpha/Beta)
            var matches = Regex.Matches(input, @"(\d+)\s*(Blood|Stun)", RegexOptions.IgnoreCase);

            int blood = 0;
            int stun = 0;

            foreach (Match m in matches)
            {
                int value = int.Parse(m.Groups[1].Value);
                string label = m.Groups[2].Value.ToLower();

                if (label == "blood")
                    blood = value;
                else if (label == "stun")
                    stun = value;
            }

            return $"Damage_{blood}b{stun}s.png";
        }

        // ---------- Karte rendern ----------
        static void DrawCard(
            IContainer container,
            BmgCharacter model,
            float cardWpt, float cardHpt, float padPt,
            float borderOpacity,          // 0..1
            float borderRadius = 4f,
            float borderWidth = 0.2f)
        {
            var baseDir = AppContext.BaseDirectory;
            var media = Path.Combine(baseDir, "Media");
            var portraitPath = Path.Combine(media, "portrait_");
            portraitPath += (model.Alias ?? "Unknown").Replace(" ", "");
            portraitPath += "_";
            portraitPath += (model.Name ?? "Unknown").Replace(" ", "");
            portraitPath += ".png";
            var portraitBackupPath = Path.Combine(media, "portrait_Unknown.png");

            var ringPath = Path.Combine(media, "Ring_large.png");

            var color = Colors.White;
            if (borderOpacity > 0.5f)
                color = Colors.Black;
            container
                .Width(cardWpt)
                .Height(cardHpt)
                .BorderColor(color)
                .Border(borderWidth)
                .CornerRadius(borderRadius)
                .Layers(layers =>
                {
                    layers.Layer().Container().Column(col =>
                    {
                        if (File.Exists(portraitPath))
                            col.Item().Width(Pt(14)).Height(Pt(12)).TranslateX(200f).TranslateY(11f).Image(portraitPath).FitUnproportionally();
                        else
                            col.Item().Width(Pt(14)).Height(Pt(12)).TranslateX(200f).TranslateY(11f).Image(portraitBackupPath).FitUnproportionally();
                        col.Item().Width(Pt(8)).Height(Pt(8)).TranslateX(Pt(5.25f)).TranslateY(Pt(31.75f)).Image(ringPath).FitUnproportionally();
                    });

                    layers.PrimaryLayer()
                        .Column(col =>
                        {
                            col.Item()
                                .Height(Pt(4.5f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(50);
                                });

                            // line with name & alias
                            col.Item()
                                .Height(Pt(3))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(Pt(7.5f));

                                    row.ConstantItem(Pt(27f))
                                        .Rotate(0.5f).ScaleToFit().Text(model.Name).Bold().FontSize(6f).FontColor(Colors.Black);

                                    row.ConstantItem(Pt(9.5f));

                                    row.ConstantItem(Pt(25f))
                                        .TranslateY(0.5f).Rotate(0.5f).ScaleToFit().Text(model.Alias).Bold().FontSize(6f).FontColor(Colors.Black);
                                });

                            col.Item()
                                .Height(Pt(5f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(50);
                                });

                            // line with info about faction & costs
                            col.Item()
                                .Height(Pt(5.3f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(Pt(5.5f));

                                    switch (model.Rank)
                                    {
                                        case BmgRank.Leader:
                                            row.ConstantItem(Pt(9.5f))
                                                .AlignCenter().AlignMiddle().Svg(Path.Combine(media, "Leader.svg")).FitArea();
                                            break;
                                        case BmgRank.Sidekick:
                                            row.ConstantItem(Pt(9.5f))
                                                .AlignCenter().AlignMiddle().Svg(Path.Combine(media, "Sidekick.svg")).FitArea();
                                            break;
                                        case BmgRank.FreeAgent:
                                            row.ConstantItem(Pt(9.5f))
                                                .AlignCenter().AlignMiddle().Svg(Path.Combine(media, "FreeAgent.svg")).FitArea();
                                            break;
                                        case BmgRank.Vehicle:
                                            row.ConstantItem(Pt(9.5f))
                                                .AlignCenter().AlignMiddle().ScaleToFit().Text("Vehicle").Bold().FontSize(12).FontColor(Colors.Black);
                                            break;
                                        case BmgRank.Legend:
                                            row.ConstantItem(Pt(9.5f))
                                                .AlignCenter().AlignMiddle().ScaleToFit().Text("Legend").Bold().FontSize(12).FontColor(Colors.Black);
                                            break;
                                        case BmgRank.SpecialUnit:
                                            row.ConstantItem(Pt(9.5f))
                                                .AlignCenter().AlignMiddle().ScaleToFit().Text("Special").Bold().FontSize(12).FontColor(Colors.Black);
                                            break;
                                        case BmgRank.Henchman:
                                        default:
                                            row.ConstantItem(Pt(9.5f))
                                                .AlignCenter().AlignMiddle().Svg(Path.Combine(media, "Henchman.svg")).FitArea();
                                            break;
                                    }


                                    row.ConstantItem(Pt(3f));

                                    row.ConstantItem(Pt(9.5f)).Container().Column(col =>
                                    {
                                        var factions = string.Join(Environment.NewLine, model.ProFactions);
                                        col.Item().AlignCenter().AlignMiddle().ScaleToFit().Text(factions).Bold().FontSize(5.5f).FontColor(Colors.Black);

                                    });                                        

                                    row.ConstantItem(Pt(3f));

                                    row.ConstantItem(Pt(9.5f)).Container().Column(col =>
                                    {
                                        var factions = string.Join(Environment.NewLine, model.ContraFactions);
                                        col.Item().AlignCenter().AlignMiddle().ScaleToFit().Text(factions).Bold().FontSize(5.5f).FontColor(Colors.Black);

                                    });

                                    row.ConstantItem(Pt(3f));

                                    row.ConstantItem(Pt(9.5f))
                                        .AlignCenter().AlignMiddle().ScaleToFit().Text(model.Reputation).Bold().FontSize(12f).FontColor(Colors.Black);

                                    row.ConstantItem(Pt(4f));

                                    row.ConstantItem(Pt(9.5f))
                                        .AlignCenter().AlignMiddle().ScaleToFit().Text("$" + model.Dollar).Bold().FontSize(12f).FontColor(Colors.Black);
                                });

                            col.Item()
                                .Height(Pt(2f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(50);
                                });


                            var weaponIndex = 0;
                            // 2 lines for weapon stats
                            while (weaponIndex < 2)
                            {
                                col.Item()
                                    .Height(Pt(4.4f))
                                    .Width(cardWpt)
                                    .Row(row =>
                                    {
                                        row.ConstantItem(Pt(5.5f));

                                        if (weaponIndex < model.Weapons.Count)
                                        {
                                            var weapon = model.Weapons[weaponIndex];

                                            row.ConstantItem(Pt(18.5f))
                                            .AlignCenter().AlignMiddle().ScaleToFit().Text(weapon.Name).Bold().FontSize(6).FontColor(Colors.Black);

                                            row.ConstantItem(Pt(1f));
                                            var damageFile = Path.Combine(media, ConvertDamage(weapon.Damage));

                                            if (File.Exists(damageFile))
                                                row.ConstantItem(Pt(7.5f))
                                                    .AlignCenter().AlignMiddle().Image(damageFile).FitArea();
                                            else
                                                row.ConstantItem(Pt(7.5f)).AlignCenter().AlignMiddle().ScaleToFit().Text(weapon.Damage.Replace(",", Environment.NewLine)).Bold().FontSize(12).FontColor(Colors.Black);

                                            if (weapon is RangedWeaponUpgrade)
                                            {
                                                row.ConstantItem(Pt(7.5f))
                                                    .AlignCenter().AlignMiddle().ScaleToFit().Text(weapon.ROF).Bold().FontSize(6).FontColor(Colors.Black);

                                                row.ConstantItem(Pt(7.5f))
                                                    .AlignCenter().AlignMiddle().ScaleToFit().Text(weapon.Ammo).Bold().FontSize(6).FontColor(Colors.Black);
                                            }
                                            else
                                            {
                                                row.ConstantItem(Pt(7.5f))
                                                    .AlignCenter().AlignMiddle().ScaleToFit().Text("-").Bold().FontSize(6).FontColor(Colors.Black);

                                                row.ConstantItem(Pt(7.5f))
                                                    .AlignCenter().AlignMiddle().ScaleToFit().Text("-").Bold().FontSize(6).FontColor(Colors.Black);
                                            }

                                            row.ConstantItem(Pt(36f))
                                                /*.BorderColor(color).Border(borderWidth)*/
                                                .AlignCenter().AlignMiddle().ScaleToFit().Text(string.Join(", ", weapon.WeaponTraits)).FontSize(6).FontColor(Colors.Black);
                                        }
                                    });
                                weaponIndex++;
                            }

                            col.Item()
                                .Height(Pt(2.5f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(50);
                                });

                            var traitsSplitted = model.Traits.Split(",");
                            var traitsCount = traitsSplitted.Count();
                            var traitsIncr = 0;
                            // 1'st line of traits
                            col.Item()
                                .Height(Pt(2.5f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(Pt(5.5f));

                                    while (traitsIncr < traitsCount && traitsIncr < 4)
                                    {
                                        var curTrait = traitsSplitted[traitsIncr].ToString();
                                        row.ConstantItem(Pt(18.5f))
                                            .AlignCenter().AlignMiddle().ScaleToFit().Text(curTrait).Bold().FontSize(12).FontColor(Colors.Black);

                                        row.ConstantItem(Pt(1.2f));
                                        traitsIncr++;
                                    }
                                });

                            col.Item()
                                .Height(Pt(0.25f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(50);
                                });

                            // 2'nd line of traits
                            col.Item()
                                .Height(Pt(2.5f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(Pt(5.5f));

                                    while (traitsIncr < traitsCount && traitsIncr < 8)
                                    {
                                        var curTrait = traitsSplitted[traitsIncr].ToString();
                                        row.ConstantItem(Pt(18.5f))
                                            .AlignCenter().AlignMiddle().ScaleToFit().Text(curTrait).Bold().FontSize(12).FontColor(Colors.Black);

                                        row.ConstantItem(Pt(1.2f));
                                        traitsIncr++;
                                    }
                                });

                            col.Item()
                                .Height(Pt(0.25f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(50);
                                });

                            // 3'rd line of traits
                            col.Item()
                                .Height(Pt(2.5f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(Pt(5.5f));

                                    while (traitsIncr < traitsCount && traitsIncr < 12)
                                    {
                                        var curTrait = traitsSplitted[traitsIncr].ToString();
                                        row.ConstantItem(Pt(18.5f))
                                            .AlignCenter().AlignMiddle().ScaleToFit().Text(curTrait).Bold().FontSize(12).FontColor(Colors.Black);

                                        row.ConstantItem(Pt(1f));
                                        traitsIncr++;
                                    }
                                });

                            col.Item()
                                .Height(Pt(5f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(50);
                                });

                            // Willpower
                            col.Item()
                                .Height(Pt(7.75f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(Pt(7.85f));
                                    row.ConstantItem(Pt(6.5f)).Rotate(4f).ScaleToFit().Text(model.Willpoints).FontFamily("Hard Grunge").FontSize(24f).FontColor(Colors.Red.Medium);
                                });

                            col.Item()
                                .Height(Pt(2f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(50);
                                });

                            // Str, Mov, Att, Def, Spc, End Stats
                            col.Item()
                                .Height(Pt(7f))
                                .Width(cardWpt)
                                .Row(row =>
                                {
                                    row.ConstantItem(Pt(6.5f));
                                    row.ConstantItem(Pt(6.5f)).Rotate(4f).ScaleToFit().Text(model.Strength).FontFamily("Hard Grunge").FontSize(24f).FontColor(Colors.Black);

                                    row.ConstantItem(Pt(9f));
                                    row.ConstantItem(Pt(6.5f)).Rotate(4f).TranslateY(Pt(-0.3f)).ScaleToFit().Text(model.Movement).FontFamily("Hard Grunge").FontSize(24f).FontColor(Colors.Black);

                                    row.ConstantItem(Pt(7.1f));
                                    row.ConstantItem(Pt(6.5f)).Rotate(4f).TranslateY(Pt(-0.3f)).ScaleToFit().Text(model.Attack).FontFamily("Hard Grunge").FontSize(24f).FontColor(Colors.Black);

                                    row.ConstantItem(Pt(7.1f));
                                    row.ConstantItem(Pt(6.5f)).Rotate(4f).TranslateY(Pt(-0.3f)).ScaleToFit().Text(model.Defense).FontFamily("Hard Grunge").FontSize(24f).FontColor(Colors.Black);

                                    row.ConstantItem(Pt(7.1f));
                                    row.ConstantItem(Pt(6.5f)).Rotate(4f).TranslateY(Pt(-0.3f)).ScaleToFit().Text(model.Special).FontFamily("Hard Grunge").FontSize(24f).FontColor(Colors.Black);

                                    row.ConstantItem(Pt(7.1f));
                                    row.ConstantItem(Pt(6.5f)).Rotate(4f).TranslateY(Pt(-0.3f)).ScaleToFit().Text(model.Endurance).FontFamily("Hard Grunge").FontSize(24f).FontColor(Colors.Black);
                                });
                        });
                });
        }

        static void Test(List<BmgCharacter> models)
        {
            var baseDir = AppContext.BaseDirectory;

            var backgroundFilePath = Path.Combine(baseDir, "Media\\Playing Cards Background.plain.jpg");

            var cardWpt = Pt(87.8);
            var cardHpt = Pt(63.4);
            var padPt = Pt(2.0);
            var gapPt = Pt(2.0);
            var cols = 3;
            var rows = 3;
            var usedRows = 3;

            try
            {
                Document.Create(container =>
                {
                    container.Page(page =>
                    {
                        page.Size(28.0f, 21.6f, Unit.Centimetre);
                        page.Background().Image(backgroundFilePath).FitArea();
                        page.PageColor(Colors.White);
                        page.DefaultTextStyle(x => x.FontSize(20));

                        page.Content()
                             .PaddingLeft(Pt(6f))
                             .PaddingTop(Pt(11f))
                             .Element(container =>
                             {
                                 container.Table(table =>
                                 {
                                     table.ColumnsDefinition(colsDef =>
                                     {
                                         for (int c = 0; c < cols; c++)
                                             colsDef.ConstantColumn(cardWpt + gapPt);
                                     });

                                     int index = 0;
                                     int totalCells = models.Count;
                                     for (int cell = 0; cell < totalCells; cell++)
                                     {
                                         var model = models[cell];
                                         table.Cell().Element(cellContainer =>
                                         {
                                             var inner = cellContainer.PaddingRight(gapPt).PaddingBottom(gapPt).Width(cardWpt).Height(cardHpt);

                                             DrawCard(inner, model, cardWpt, cardHpt, padPt, 1.0f);
                                         });
                                     }
                                 });
                             });
                    });
                })
                //.GeneratePdf("C:\\Users\\chris\\source\\repos\\QuestPDFTestConsoleApp\\QuestPDFTestConsoleApp\\hello.pdf");
                .GeneratePdf("hello.pdf");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
