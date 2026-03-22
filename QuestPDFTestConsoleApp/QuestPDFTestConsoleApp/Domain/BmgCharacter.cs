using System.Collections.Generic;

namespace QuestPDFTestConsoleApp.Domain
{
    public interface IWeaponUpgrade
    {
        string Name { get; set; }
        string Damage { get; set; }
        string ROF { get; set; }
        string Ammo { get; set; }
        List<string> WeaponTraits { get; }
        List<string> WeaponRules { get; }
    }

    public class CCWeaponUpgrade : IWeaponUpgrade
    {
        public string Name { get; set; } = string.Empty;
        public string Damage { get; set; } = string.Empty;
        public string ROF { get; set; } = string.Empty;
        public string Ammo { get; set; } = string.Empty;
        public List<string> WeaponTraits { get; } = new();
        public List<string> WeaponRules { get; } = new();
    }

    public class RangedWeaponUpgrade : IWeaponUpgrade
    {
        public string Name { get; set; } = string.Empty;
        public string Damage { get; set; } = string.Empty;
        public string ROF { get; set; } = string.Empty;
        public string Ammo { get; set; } = string.Empty;
        public List<string> WeaponTraits { get; } = new();
        public List<string> WeaponRules { get; } = new();
    }

    public class BmgCharacter
    {
        public string? Name { get; set; }
        public string? Alias { get; set; }
        public string? Willpoints { get; set; }
        public string? Strength { get; set; }
        public string? Movement { get; set; }
        public string? Attack { get; set; }
        public string? Defense { get; set; }
        public string? Special { get; set; }
        public string? Endurance { get; set; }
        public string? Traits { get; set; }

        public Dictionary<string, string> Extras { get; } = new();

        public string? Dollar { get; set; }
        public string? Reputation { get; set; }
        public Dictionary<string, string> CostExtras { get; } = new();

        public List<BmgFaction> ProFactions { get; } = new();

        public List<BmgFaction> ContraFactions { get; } = new();

        public BmgRank Rank { set; get; } = new();

        public List<IWeaponUpgrade> Weapons { get; } = new();
    }
}
