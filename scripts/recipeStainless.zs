import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Crusher;
import mods.ic2.BlockCutter;
import mods.ic2.MetalFormer;
import mods.ic2.Macerator;
import mods.thermalexpansion.Compactor;
import mods.nuclearcraft.pressurizer;
import mods.appliedenergistics2.Grinder;

var ingot = <contenttweaker:ingot_stainless>;
var block = <contenttweaker:block_stainless>;
var sheetmetal = <contenttweaker:block_sheetmetal_stainless>;
var plate = <contenttweaker:plate_stainless>;
var dust = <contenttweaker:dust_stainless>;
var impureDust = <contenttweaker:dust_impure_stainless>;

// register oredict
<ore:ingotStainless>.add(ingot);
<ore:blockStainless>.add(block);
<ore:blockSheetmetalStainless>.add(sheetmetal);
<ore:plateStainless>.add(plate);
<ore:dustStainless>.add(dust);
<ore:dustDirtyStainless>.add(impureDust);


// add recipes to stainless
recipes.addShaped(
    "stainless_block",
    block,
    [
        [ingot, ingot, ingot],
        [ingot, ingot, ingot],
        [ingot, ingot, ingot]
    ]
);
recipes.addShaped(
    "stainless_sheetmetal",
    sheetmetal * 4,
    [
        [null, plate, null],
        [plate, null, plate],
        [null, plate, null],
    ]
);
// plate recipes
// ic2 forge hammer (crafting)
recipes.addShapeless(
    "forge_hammer_stainless_plate",
    plate,
    [<ic2:forge_hammer>, ingot, ingot]
);
// ie engineer's hammer (crafting)
recipes.addShapeless(
    "engineers_hammer_stainless_plate",
    plate,
    [<immersiveengineering:tool>, ingot, ingot]
);
// ie metal press
MetalPress.addRecipe(plate, ingot, <immersiveengineering:mold>, 2048, 1);
// ic2 block cutting machine
BlockCutter.addRecipe(plate * 9, block, 9);
// ic2 metal former (rolling)
MetalFormer.addRollingRecipe(plate, ingot);
// te compactor
Compactor.addPressRecipe(plate, ingot, 4000);
// nuc pressurizer
pressurizer.addRecipe([ingot, plate]);

// STAINLESS STEEL CHAIN
var ARC_ENERGY = 4096*2;
ArcFurnace.addRecipe(ingot, dust, <immersiveengineering:material:7>, 200, ARC_ENERGY); // max rf/t input for arc furances is 4096*3
Crusher.addRecipe(dust, impureDust, 2000);
ArcFurnace.addRecipe(impureDust, <ore:ingotSteel>, <immersiveengineering:material:7>, 200, ARC_ENERGY, [<ore:dustAluminum>, <ore:dustNickel>], "Alloying");

// dust recipes
Crusher.addRecipe(dust, ingot, 2000);
Macerator.addRecipe(dust, ingot);
mods.mekanism.crusher.addRecipe(ingot, dust);
Grinder.addRecipe(dust, ingot, 8);
mods.nuclearcraft.manufactory.addRecipe([ingot, dust]);
mods.enderio.SagMill.addRecipe([dust], [100], ingot);
