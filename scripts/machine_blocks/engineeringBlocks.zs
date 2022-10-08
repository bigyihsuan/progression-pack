// change the engineering block recipes
// light: bronze
// heavy: invar
// redstone: redstone wire coil (contenttweaker)

var blockRedst = <immersiveengineering:metal_decoration0:3>;
var blockLight = <immersiveengineering:metal_decoration0:4>;
var blockHeavy = <immersiveengineering:metal_decoration0:5>;
var blockGener = <immersiveengineering:metal_decoration0:6>;
var blockRadia = <immersiveengineering:metal_decoration0:7>;

var componentIron = <immersiveengineering:material:8>;
var componentSteel = <immersiveengineering:material:9>;

var plateIron = <ore:plateIron>;
var plateSteel = <ore:plateSteel>;
var plateConstantan = <ore:plateConstantan>;
var wireCoilRedstone = <immersiveengineering:wirecoil:5>;
var blockCoilRedstone = <contenttweaker:block_coil_redstone>;

var sheetMetalConstantan = <ore:blockSheetmetalConstantan>;

// remove existing recipes
recipes.remove(blockRedst);

recipes.addShaped("pack_redstone_engineering_block", blockRedst * 2, [
    [sheetMetalConstantan, wireCoilRedstone,  sheetMetalConstantan],
    [wireCoilRedstone,     blockCoilRedstone, wireCoilRedstone],
    [sheetMetalConstantan, wireCoilRedstone,  sheetMetalConstantan]]);

recipes.replaceAllOccurrences(<ore:ingotIron>, <ore:blockSheetmetalIron>, blockLight);
recipes.replaceAllOccurrences(<ore:ingotCopper>, <ore:plateBronze>, blockLight);

recipes.replaceAllOccurrences(<ore:ingotSteel>, <ore:blockSheetmetalSteel>, blockHeavy);
recipes.replaceAllOccurrences(<ore:ingotElectrum>, <ore:plateInvar>, blockHeavy);

recipes.replaceAllOccurrences(<ore:ingotSteel>, <ore:blockSheetmetalSteel>, blockGener);
recipes.replaceAllOccurrences(<ore:ingotElectrum>, <ore:blockSheetmetalElectrum>, blockGener);

recipes.replaceAllOccurrences(<ore:ingotSteel>, <ore:blockSheetmetalSteel>, blockGener);
recipes.replaceAllOccurrences(<ore:ingotCopper>, <ore:plateBronze>, blockGener);