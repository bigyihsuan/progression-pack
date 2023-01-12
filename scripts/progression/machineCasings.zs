// Redstone Coil Block
var coil = <immersiveengineering:wirecoil:5>;
var iron = <ore:ingotIron>;
var redstoneCoilBlock = <contenttweaker:block_coil_redstone>;

recipes.addShaped(PACK + "coil_block_redstone", redstoneCoilBlock, [
    [coil, coil, coil],
    [coil, iron, coil],
    [coil, coil, coil],
]);

// Treated Bricks
// var creosote = <liquid:creosote>;
var seared = <ore:blockSeared>;
var treated = <contenttweaker:block_bricks_treated>;
recipes.addShaped(PACK + "treated_bricks", treated, [
    [seared, seared, seared],
    [seared, <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}), seared],
    [seared, seared, seared],
]);

// Alloy Kiln Bricks
var kiln = <immersiveengineering:stone_decoration:10>;
recipes.replaceAllOccurrences(<ore:ingotBrick>, treated, kiln);
// Blast Bricks
var blast = <immersiveengineering:stone_decoration:1>;
recipes.replaceAllOccurrences(<ore:ingotBrickNether>, <minecraft:nether_brick>, blast);
recipes.replaceAllOccurrences(<ore:ingotBrick>, treated, blast);

// Basic Machine Casing
var basicMachineCasing = <ic2:resource:12>;
var stainlessPlate = <contenttweaker:plate_stainless>;
recipes.remove(basicMachineCasing);
recipes.addShaped(
    PACK + "stainless_basic_machine_casing",
    basicMachineCasing,
    [
        [stainlessPlate, stainlessPlate, stainlessPlate],
        [stainlessPlate, null, stainlessPlate],
        [stainlessPlate, stainlessPlate, stainlessPlate],
    ]
);
// Advanced Machine Casing
// Keep as the same
