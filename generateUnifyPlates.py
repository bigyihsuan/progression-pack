from typing import Tuple

header = '''import mods.ic2.BlockCutter;
import mods.ic2.MetalFormer;
import crafttweaker.item.IItemStack;

// unidict did most of the work for us, just need to add in things
// tin - engineer
// silver - forge, block 3, metal
// aluminum - forge, block 3, metal
// nickel - forge, block 3, metal
// platinum - engineer, forge, block 9, metal
// iridium - engineer, forge, block 9, metal
// mana - engineer, forge, block 9, metal
// steel - engineer
// electrum - block 3, metal
// invar - engineer, forge, block 6, metal
// bronze - engineer
// constnatan - forge, block 3, metal
// signalum - forge, engineer, block 9, metal
// lumium - forge, engineer
// enderium - forge, engineer, block 9, metal

mods.unidict.removalByKind.get("Crafting").remove("plate");
'''

remove = '''recipes.removeShapeless({})'''
engineer = '''recipes.addShapeless(
    "engineers_hammer_{0}",
    {1},
    [<immersiveengineering:tool>, {2}, {2}]
);'''
forge = '''recipes.addShapeless(
    "forge_hammer_{0}",
    {1},
    [<ic2:forge_hammer>, {2}, {2}]
);'''
block = '''BlockCutter.addRecipe({} * 9, {}, {});'''
metal = '''MetalFormer.addRollingRecipe({}, {});'''

def oneToOne(name: str, out: str) -> Tuple[str, str]:
    return (out, f"<ore:ingot{name.capitalize()}>")

def withName(name: str, out: str) -> Tuple[str, str, str]:
    return (name, *oneToOne(name, out))

def blockName(name: str, out: str) -> Tuple[str, str]:
    return (out, f"<ore:block{name.capitalize()}>")

hardnesses = {
    "silver": 3,   "aluminum": 3,  "nickel": 3,
    "platinum": 9, "iridium": 9, "mithril": 9,
    "electrum": 3, "invar": 6,   "constantan": 3,
    "signalum": 9, "lumium": 9,  "enderium": 9,
    "cobalt": 9,   "ardite": 9,  "boron": 3,
    "osmium": 9,
}

metals = {
    "iron": "<thermalfoundation:material:32>",
    "gold": "<thermalfoundation:material:33>",
    "copper": "<thermalfoundation:material:320>",
    "lead": "<thermalfoundation:material:323>",
    "ardite": "<jaopca:item_plateardite>",
    "boron": "<jaopca:item_plateboron>",
    "cobalt": "<jaopca:item_platecobalt>",
    "lithium": "<jaopca:item_platelithium>",
    "magnesium": "<jaopca:item_platemagnesium>",
    "osmium": "<jaopca:item_plateosmium>",
    "thorium": "<jaopca:item_platethorium>",
    "uranium": "<immersiveengineering:metal:35>",
    "tin": "<thermalfoundation:material:321>",
    "silver": "<thermalfoundation:material:322>",
    "aluminum": "<thermalfoundation:material:324>",
    "nickel": "<thermalfoundation:material:325>",
    "platinum": "<thermalfoundation:material:326>",
    "iridium": "<thermalfoundation:material:327>",
    "mithril": "<thermalfoundation:material:328>",
    "steel": "<thermalfoundation:material:352>",
    "electrum": "<thermalfoundation:material:353>",
    "invar": "<thermalfoundation:material:354>",
    "bronze": "<thermalfoundation:material:355>",
    "constantan": "<thermalfoundation:material:356>",
    "signalum": "<thermalfoundation:material:357>",
    "lumium": "<thermalfoundation:material:358>",
    "enderium": "<thermalfoundation:material:359>"
}

print(header)
for m, out in metals.items():
    print(engineer.format(*withName(m, out)))
    print(forge.format(*withName(m, out)))
    print(metal.format(*oneToOne(m, out)))
    if m in hardnesses:
        print(block.format(*blockName(m, out), hardnesses[m]))
    print()
