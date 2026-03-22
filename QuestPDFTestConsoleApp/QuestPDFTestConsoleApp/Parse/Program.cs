using System;
using System.IO;
using QuestPDFTestConsoleApp.Parsing;

namespace CheshireDemo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var baseDir = AppContext.BaseDirectory;
            var samples = Path.Combine(baseDir, "Samples");

            string mainXmlPath = Path.Combine(samples, "main.xml");
            string weapon1Path = Path.Combine(samples, "weapon_poisoned_sword.xml");
            string weapon2Path = Path.Combine(samples, "weapon_acid_arrow.xml");

            string mainXml = File.ReadAllText(mainXmlPath);
            var extraXmls = new[] { File.ReadAllText(weapon1Path), File.ReadAllText(weapon2Path) };

            var model = CheshireParser.ParseFromXml(mainXml, extraXmls);

            Console.WriteLine($"Name: {model.Name}");
            Console.WriteLine($"Alias: {model.Alias}");
            Console.WriteLine($"Strength: {model.Strength}");
            Console.WriteLine($"Reputation: {model.Reputation}");
            Console.WriteLine($"Factions: {string.Join(", ", model.Factions)}");
            Console.WriteLine($"Categories: {string.Join(", ", model.Categories)}");

            Console.WriteLine("Weapons:");
            foreach (var w in model.Weapons)
            {
                Console.WriteLine($"- {w.Name} | Damage={w.Damage}, ROF={w.ROF}, Ammo={w.Ammo}");
                Console.WriteLine($"  Traits: {string.Join(", ", w.WeaponTraits)}");
                Console.WriteLine($"  Rules:  {string.Join(", ", w.WeaponRules)}");
            }
        }
    }
}
