#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;

// redstone coil block
var redstoneCoilBlock = VanillaFactory.createBlock("block_coil_redstone", <blockmaterial:iron>);
redstoneCoilBlock.register();