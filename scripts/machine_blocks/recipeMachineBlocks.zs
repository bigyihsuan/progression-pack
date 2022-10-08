var coil = <immersiveengineering:wirecoil:5>;
var iron = <ore:ingotIron>;
var redstoneCoilBlock = <contenttweaker:block_coil_redstone>;

recipes.addShaped("coil_block_redstone", redstoneCoilBlock, [
    [coil, coil, coil],
    [coil, iron, coil],
    [coil, coil, coil],
]);