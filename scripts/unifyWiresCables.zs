import crafttweaker.item.IIngredient;
import mods.ic2.MetalFormer;
import mods.immersiveengineering.MetalPress;

// TODO: contenttweaker ic2 cables for cheaper ie wires

var copperCable = <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte});
var copperInsulated_x1_Cable = <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte});
var glassCable = <ic2:cable>.withTag({type: 1 as byte, insulation: 0 as byte});
var goldCable = <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte});
var goldInsulated_x1_Cable = <ic2:cable:2>.withTag({type: 2 as byte, insulation: 1 as byte});
var goldInsulated_x2_Cable = <ic2:cable:2>.withTag({type: 2 as byte, insulation: 2 as byte});
var ironCable = <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte});
var ironInsulated_x1_Cable = <ic2:cable:3>.withTag({type: 3 as byte, insulation: 1 as byte});
var ironInsulated_x2_Cable = <ic2:cable:3>.withTag({type: 3 as byte, insulation: 2 as byte});
var ironInsulated_x3_Cable = <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte});
var tinCable = <ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte});
var tinInsulated_x1_Cable = <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte});


var tinCoil = <industrialwires:ic2_wire_coil:0>;
var copperCoil = <industrialwires:ic2_wire_coil:1>;
var goldCoil = <industrialwires:ic2_wire_coil:2>;
var ironCoil = <industrialwires:ic2_wire_coil:3>;
var glassCoil = <industrialwires:ic2_wire_coil:4>;
var tinInsulatedCoil = <industrialwires:ic2_wire_coil:5>;
var copperInsulatedCoil = <industrialwires:ic2_wire_coil:6>;
var goldInsulatedCoil = <industrialwires:ic2_wire_coil:7>;

// mimic wire coil recipes
function wire(input as IIngredient, stick as IIngredient) as IIngredient[][] {
    return [[null, input, null], [input, stick, input], [null, input, null]];
}

// add new cables
// aluminum
MetalFormer.addExtrudingRecipe(<item:contenttweaker:cable_aluminum> * 3, <ore:ingotAluminum>);
MetalFormer.addCuttingRecipe(<item:contenttweaker:cable_aluminum> * 3, <ore:plateAluminum>);
MetalPress.addRecipe(<immersiveengineering:material:22> * 4, <item:contenttweaker:cable_aluminum>, <immersiveengineering:mold:4>, 2400, 1);
// electrum
MetalFormer.addExtrudingRecipe(<item:contenttweaker:cable_electrum> * 3, <ore:ingotElectrum>);
MetalFormer.addCuttingRecipe(<item:contenttweaker:cable_electrum> * 3, <ore:plateElectrum>);
MetalPress.addRecipe(<immersiveengineering:material:21> * 4, <item:contenttweaker:cable_electrum>, <immersiveengineering:mold:4>, 2400, 1);
// steel
MetalFormer.addExtrudingRecipe(<item:contenttweaker:cable_steel> * 3, <ore:ingotSteel>);
MetalFormer.addCuttingRecipe(<item:contenttweaker:cable_steel> * 3, <ore:plateSteel>);
MetalPress.addRecipe(<immersiveengineering:material:23> * 4, <item:contenttweaker:cable_steel>, <immersiveengineering:mold:4>, 2400, 1);

// add new wires
// gold
MetalPress.addRecipe(<item:contenttweaker:wire_gold> * 4, goldCable, <immersiveengineering:mold:4>, 2400, 1);
recipes.addShaped("industrialwires_goldCoil", goldCoil.withTag({wireLength: 4}),
    wire(<item:contenttweaker:wire_gold>, <ore:stickWood>));
recipes.addShaped("industrialwires_goldCoil_treated", goldCoil.withTag({wireLength: 4}),
    wire(<item:contenttweaker:wire_gold>, <ore:stickTreatedWood>));
// iron
MetalPress.addRecipe(<item:contenttweaker:wire_iron> * 4, ironCable, <immersiveengineering:mold:4>, 2400, 1);
recipes.addShaped("industrialwires_ironCoil", ironCoil.withTag({wireLength: 4}),
    wire(<item:contenttweaker:wire_iron>, <ore:stickWood>));
recipes.addShaped("industrialwires_ironCoil_treated", ironCoil.withTag({wireLength: 4}),
    wire(<item:contenttweaker:wire_iron>, <ore:stickTreatedWood>));
// tin
MetalPress.addRecipe(<item:contenttweaker:wire_tin> * 4, tinCable, <immersiveengineering:mold:4>, 2400, 1);
recipes.addShaped("industrialwires_tinCoil", tinCoil.withTag({wireLength: 4}),
    wire(<item:contenttweaker:wire_tin>, <ore:stickWood>));
recipes.addShaped("industrialwires_tinCoil_treated", tinCoil.withTag({wireLength: 4}),
    wire(<item:contenttweaker:wire_tin>, <ore:stickTreatedWood>));

// existing cables -> existing wires
// MetalPress.addRecipe(<item:contenttweaker:wire_tin> * 2, <ore:ingotTin>, <immersiveengineering:mold:4>, 2400, 1);

// TODO: check metal press recipes for wires
// TODO: add recipes from ic2 cable -> ie wire