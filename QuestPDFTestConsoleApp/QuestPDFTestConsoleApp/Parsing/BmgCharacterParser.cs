using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;
using System.Reflection;
using QuestPDFTestConsoleApp.Domain;

namespace QuestPDFTestConsoleApp.Parsing
{
    public static class BmgCharacterParser
    {
        public static List<BmgCharacter> ParseFromXml(IEnumerable<string>? xmls = null)
        {
            var extraDocs = xmls?.Select(XDocument.Parse).ToList() ?? new List<XDocument>();

            var idIndexCharacters = BuildSelectionEntryIndex(extraDocs, "model");
            var idIndexUpgrades = BuildSelectionEntryIndex(extraDocs, "upgrade");

            var bmgCharacters = new List<BmgCharacter>();

            foreach (var item in idIndexCharacters)
            {
                var bmgCharacter = new BmgCharacter();
                var root = item.Value as XElement;

                MapCharacteristicsAndCosts(root, bmgCharacter);
                MapCategoryLinks(root, bmgCharacter);

                var xmlNamespace = root.Name.Namespace;
                var entryLinks = root.Descendants(xmlNamespace + "entryLink") ?? Enumerable.Empty<XElement>();

                foreach (var link in entryLinks)
                {
                    var targetId = (string?)link.Attribute("targetId");
                    if (string.IsNullOrWhiteSpace(targetId)) continue;

                    if (!idIndexUpgrades.TryGetValue(targetId, out var targetSelectionEntry))
                        continue;

                    var weapon = ParseWeaponSelection(targetSelectionEntry);
                    if (weapon != null)
                        bmgCharacter.Weapons.Add(weapon);
                }

                bmgCharacters.Add(bmgCharacter);
            }           

            return bmgCharacters;
        }

        private static Dictionary<string, XElement> BuildSelectionEntryIndex(IEnumerable<XDocument> xmlDocs, string typeFilter)
        {
            var dict = new Dictionary<string, XElement>(StringComparer.OrdinalIgnoreCase);

            void AddEntries(XDocument doc)
            {
                var xmlNamespace = doc.Root!.Name.Namespace;
                var selectionEntryNodes = doc.Descendants(xmlNamespace + "selectionEntry");
                IEnumerable<XElement> nodes;
                if (!string.IsNullOrEmpty(typeFilter))
                {
                    nodes = selectionEntryNodes.Where(e => (string)e.Attribute("type")! == typeFilter);
                }
                else nodes = null;

                if (nodes == null) 
                    nodes = selectionEntryNodes;

                foreach (var se in nodes)
                {
                    var id = (string?)se.Attribute("id");
                    if (string.IsNullOrWhiteSpace(id)) continue;
                    dict[id] = se;
                }
            }

            foreach (var d in xmlDocs) AddEntries(d);

            return dict;
        }

        private static void MapCharacteristicsAndCosts(XElement root, BmgCharacter model)
        {
            var xmlNamespace = root.Name.Namespace;

            var propMap = typeof(BmgCharacter)
                .GetProperties(BindingFlags.Public | BindingFlags.Instance)
                .Where(p => p.CanWrite)
                .ToDictionary(p => p.Name, p => p, StringComparer.OrdinalIgnoreCase);

            var characteristics = root
                .Descendants(xmlNamespace + "profiles")
                .Descendants(xmlNamespace + "profile")
                .Descendants(xmlNamespace + "characteristics")
                .Descendants(xmlNamespace + "characteristic");

            foreach (var ch in characteristics)
            {
                var nameAttr = (string?)ch.Attribute("name");
                var valueText = (string?)ch.Value ?? string.Empty;
                if (string.IsNullOrWhiteSpace(nameAttr)) continue;

                var propertyName = ToValidIdentifier(nameAttr);
                if (propMap.TryGetValue(propertyName, out var prop))
                {
                    prop.SetValue(model, valueText);
                }
                else
                {
                    if (!model.Extras.ContainsKey(nameAttr))
                        model.Extras[nameAttr] = valueText;
                }
            }

            var costs = root.Element(xmlNamespace + "costs")?.Elements(xmlNamespace + "cost") ?? Enumerable.Empty<XElement>();
            foreach (var cost in costs)
            {
                var nameAttr = ((string?)cost.Attribute("name"))?.Trim();
                var valueAttr = (string?)cost.Attribute("value") ?? string.Empty;
                if (string.IsNullOrWhiteSpace(nameAttr)) continue;

                var propertyName = ToValidIdentifier(nameAttr);
                if (propMap.TryGetValue(propertyName, out var prop))
                {
                    prop.SetValue(model, valueAttr);
                }
                else
                {
                    if (!model.CostExtras.ContainsKey(nameAttr))
                        model.CostExtras[nameAttr] = valueAttr;
                }
            }
        }

        private static void MapCategoryLinks(XElement root, BmgCharacter model)
        {
            var xmlNamespace = root.Name.Namespace;
            var categoryLinks = root.Element(xmlNamespace + "categoryLinks")?.Elements(xmlNamespace + "categoryLink") ?? Enumerable.Empty<XElement>();

            var categoryMap = new Dictionary<string, BmgRank>(StringComparer.OrdinalIgnoreCase)
            {
                ["Henchmen (Corrupt)"] = BmgRank.Henchman,
                ["Henchmen (Common)"] = BmgRank.Henchman,
                ["Henchmen (Faction-specific)"] = BmgRank.Henchman,
                ["Free Agent"] = BmgRank.FreeAgent,
                ["Leader"] = BmgRank.Leader,
                ["Sidekick"] = BmgRank.Sidekick,
                ["Vehicle"] = BmgRank.Vehicle,
                ["Legend"] = BmgRank.Legend,
                ["Special Unit"] = BmgRank.SpecialUnit
            };

            var factionMap = new Dictionary<string, BmgFaction>(StringComparer.OrdinalIgnoreCase)
            {
                ["Crew (The Brave and the Bold)"] = BmgFaction.BraveAndBold,
                ["Crew (Joker)"] = BmgFaction.Joker,
                ["Crew (Penguin)"] = BmgFaction.Penguin,
                ["Crew (Bane)"] = BmgFaction.Bane,
                ["Crew (Court of Owls)"] = BmgFaction.CourtOfOwls,
                ["Crew (Riddler)"] = BmgFaction.Riddler,
                ["Crew (Mr. Freeze)"] = BmgFaction.MrFreeze,
                ["Crew (Militia)"] = BmgFaction.Militia,
                ["Crew (Central City Villains)"] = BmgFaction.CCVillains,
                ["Crew (League of Assassins)"] = BmgFaction.Assassins,
                ["Crew (Gotham City Sirens)"] = BmgFaction.Sirens,
                ["Crew (Organized Crime)"] = BmgFaction.OrganizedCrime,

                ["Rival (The Brave and the Bold)"] = BmgFaction.BraveAndBold,
                ["Rival (Joker)"] = BmgFaction.Joker,
                ["Rival (Penguin)"] = BmgFaction.Penguin,
                ["Rival (Bane)"] = BmgFaction.Bane,
                ["Rival (Court of Owls)"] = BmgFaction.CourtOfOwls,
                ["Rival (Riddler)"] = BmgFaction.Riddler,
                ["Rival (Mr. Freeze)"] = BmgFaction.MrFreeze,
                ["Rival (Militia)"] = BmgFaction.Militia,
                ["Rival (Central City Villains)"] = BmgFaction.CCVillains,
                ["Rival (League of Assassins)"] = BmgFaction.Assassins,
                ["Rival (Gotham City Sirens)"] = BmgFaction.Sirens,
                ["Rival (Organized Crime)"] = BmgFaction.OrganizedCrime,
            };

            foreach (var cl in categoryLinks)
            {
                var nameAttr = ((string?)cl.Attribute("name"))?.Trim();
                if (string.IsNullOrWhiteSpace(nameAttr)) continue;

                if (nameAttr.StartsWith("Crew", StringComparison.OrdinalIgnoreCase) && factionMap.TryGetValue(nameAttr, out var enumValProFaction))
                {
                    model.ProFactions.Add(enumValProFaction);
                }

                if (nameAttr.StartsWith("Rival", StringComparison.OrdinalIgnoreCase) && factionMap.TryGetValue(nameAttr, out var enumValConFaction))
                {
                    model.ContraFactions.Add(enumValConFaction);
                }

                if (categoryMap.TryGetValue(nameAttr, out var enumValRank))
                {
                    model.Rank = enumValRank;
                }
            }

            if (model.ProFactions.Count == 0)
                model.ProFactions.Add(BmgFaction.Unknown);
        }

        private static IWeaponUpgrade? ParseWeaponSelection(XElement selectionEntry)
        {
            var xmlNamespace = selectionEntry.Name.Namespace;
            var name = (string?)selectionEntry.Attribute("name") ?? string.Empty;

            var typeName = selectionEntry
                .Descendants(xmlNamespace + "profile")
                .Select(p => (string?)p.Attribute("typeName"))
                .FirstOrDefault(t => !string.IsNullOrWhiteSpace(t))
                ?? string.Empty;

            string GetChar(string key) =>
                selectionEntry
                    .Descendants(xmlNamespace + "profile")
                    .Descendants(xmlNamespace + "characteristics")
                    .Descendants(xmlNamespace + "characteristic")
                    .FirstOrDefault(c => string.Equals((string?)c.Attribute("name"), key, StringComparison.OrdinalIgnoreCase))
                    ?.Value?.Trim() ?? string.Empty;

            var damage = GetChar("Damage");
            var rof = GetChar("ROF");
            var ammo = GetChar("Ammo");

            var weaponTraitsRaw = GetChar("Weapon Traits");
            var weaponTraits = weaponTraitsRaw
                .Split(',', StringSplitOptions.RemoveEmptyEntries)
                .Select(s => s.Trim())
                .Where(s => s.Length > 0)
                .ToList();

            var weaponRulesExt = selectionEntry
                .Descendants(xmlNamespace + "infoLinks")
                .Descendants(xmlNamespace + "infoLink")
                .Select(il => ((string?)il.Attribute("name"))?.Trim())
                .Where(n => !string.IsNullOrWhiteSpace(n))
                .ToList()!;

            var weaponRulesInt = selectionEntry
                .Descendants(xmlNamespace + "rules")
                .Descendants(xmlNamespace + "rule")
                .Select(il => ((string?)il.Attribute("name"))?.Trim())
                .Where(n => !string.IsNullOrWhiteSpace(n))
                .ToList()!;

            var weaponRules = new List<string>();
            weaponRules.AddRange(weaponRulesInt);
            weaponRules.AddRange(weaponRulesExt);

            IWeaponUpgrade weapon = typeName.Equals("Ranged Weapon", StringComparison.OrdinalIgnoreCase)
                ? new RangedWeaponUpgrade()
                : typeName.Equals("CC Weapon", StringComparison.OrdinalIgnoreCase)
                    ? new CCWeaponUpgrade()
                    : null;

            if (weapon == null)
                return null;

            weapon.Name = name;
            weapon.Damage = damage;
            weapon.ROF = rof;
            weapon.Ammo = ammo;
            weapon.WeaponTraits.AddRange(weaponTraits);
            weapon.WeaponRules.AddRange(weaponRules);

            return weapon;
        }

        private static string ToValidIdentifier(string name)
        {
            var s = (name ?? string.Empty).Trim();
            var chars = s.Select(c => (char.IsLetterOrDigit(c) || c == '_') ? c : '_').ToArray();
            s = new string(chars);
            if (s.Length > 0 && char.IsDigit(s[0])) s = "_" + s;
            if (string.IsNullOrEmpty(s)) s = "Field";
            return s;
        }
    }
}
