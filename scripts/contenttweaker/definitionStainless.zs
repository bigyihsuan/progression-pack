#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;

import crafttweaker.oredict.IOreDict;

var stainlessBlock = VanillaFactory.createBlock("block_stainless", <blockmaterial:iron>);
var stainlessSheetmetal = VanillaFactory.createBlock("block_sheetmetal_stainless", <blockmaterial:iron>);
var stainlessIngot = VanillaFactory.createItem("ingot_stainless");
var stainlessPlate = VanillaFactory.createItem("plate_stainless");
var stainlessDust = VanillaFactory.createItem("dust_stainless");
var stainlessImpureDust = VanillaFactory.createItem("dust_impure_stainless");

stainlessBlock.register();
stainlessSheetmetal.register();
stainlessIngot.register();
stainlessPlate.register();
stainlessDust.register();
stainlessImpureDust.register();
