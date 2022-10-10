// Electronic Circuit
var stainlessPlate = <contenttweaker:plate_stainless>;
var circuitBoard = <immersiveengineering:material:27>;
var electronicCircuit = <ic2:crafting:1>;
var advancedCircuit = <ic2:crafting:2>;
var cable = <ore:itemInsulatedCopperCable>;

recipes.remove(electronicCircuit);
recipes.addShaped(PACK + "electronic_circuit", electronicCircuit, [
    [cable,          cable,          cable],
    [stainlessPlate, circuitBoard,   stainlessPlate],
    [cable,          cable,          cable],
]);

var glassCable = <ore:itemInsulatedGlassCable>;
var hvCable = <ore:itemInsulatedIronCable>;
recipes.remove(advancedCircuit);
recipes.addShaped(PACK + "advanced_circuit", advancedCircuit, [
    [glassCable, stainlessPlate, glassCable],
    [hvCable, <ore:circuitBasic>, hvCable],
    [glassCable, stainlessPlate, glassCable],
]);