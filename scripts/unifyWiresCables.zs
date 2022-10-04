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

// <ore:wireCopper>.add(<ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte}));
// wireElectrum
// wireAluminum/ium
// wireSteel

// remove the existing ic2 cable recipes
// itemCopperCable
recipes.remove(copperInsulated_x1_Cable, true);
// itemGoldCable
recipes.remove(goldInsulated_x1_Cable, true);
recipes.remove(goldInsulated_x2_Cable, true);
// itemIronCable
recipes.remove(ironInsulated_x1_Cable, true);
recipes.remove(ironInsulated_x2_Cable, true);
recipes.remove(ironInsulated_x3_Cable, true);
// itemTinCable
recipes.remove(tinInsulated_x1_Cable, true);



var tinCoil = <industrialwires:ic2_wire_coil:0>;
var copperCoil = <industrialwires:ic2_wire_coil:1>;
var goldCoil = <industrialwires:ic2_wire_coil:2>;
var ironCoil = <industrialwires:ic2_wire_coil:3>;
var glassCoil = <industrialwires:ic2_wire_coil:4>;
var tinInsulatedCoil = <industrialwires:ic2_wire_coil:5>;
var copperInsulatedCoil = <industrialwires:ic2_wire_coil:6>;
var goldInsulatedCoil = <industrialwires:ic2_wire_coil:7>;

recipes.remove(tinCoil);
recipes.remove(copperCoil);
recipes.remove(goldCoil);
recipes.remove(ironCoil);
recipes.remove(glassCoil);
recipes.remove(tinInsulatedCoil);
recipes.remove(copperInsulatedCoil);
recipes.remove(goldInsulatedCoil);

// mimic wire coil recipes
function wire(input as IIngredient, stick as IIngredient) as IIngredient[][] {
    return [[null, input, null], [input, stick, input], [null, input, null]];
}

// itemTinCable
recipes.addShaped("industrialwires_tinCoil", tinCoil.withTag({wireLength: 1}) * 4,
    wire(tinCable, <ore:stickWood>));
recipes.addShaped("industrialwires_tinCoil_treated", tinCoil.withTag({wireLength: 1}) * 4,
    wire(tinCable, <ore:stickTreatedWood>));
recipes.addShaped("industrialwires_tinInsulatedCoil", tinInsulatedCoil.withTag({wireLength: 1}) * 4,
    wire(tinInsulated_x1_Cable, <ore:stickWood>));
recipes.addShaped("industrialwires_tinInsulatedCoil_treated", tinInsulatedCoil.withTag({wireLength: 1}) * 4,
    wire(tinInsulated_x1_Cable, <ore:stickTreatedWood>));
// itemCopperCable
recipes.addShaped("industrialwires_copperCoil", copperCoil.withTag({wireLength: 1}) * 4,
    wire(copperCable, <ore:stickWood>));
recipes.addShaped("industrialwires_copperCoil_treated", copperCoil.withTag({wireLength: 1}) * 4,
    wire(copperCable, <ore:stickTreatedWood>));
recipes.addShaped("industrialwires_copperInsulatedCoil", copperInsulatedCoil.withTag({wireLength: 1}) * 4,
    wire(copperInsulated_x1_Cable, <ore:stickWood>));
recipes.addShaped("industrialwires_copperInsulatedCoil_treated", copperInsulatedCoil.withTag({wireLength: 1}) * 4,
    wire(copperInsulated_x1_Cable, <ore:stickTreatedWood>));
// itemGlass
recipes.addShaped("industrialwires_glassCoil", glassCoil.withTag({wireLength: 1}) * 4,
    wire(glassCable, <ore:stickWood>));
recipes.addShaped("industrialwires_glassCoil_treated", glassCoil.withTag({wireLength: 1}) * 4,
    wire(glassCable, <ore:stickTreatedWood>));
// itemGoldCable
recipes.addShaped("industrialwires_goldCoil", goldCoil.withTag({wireLength: 1}) * 4,
    wire(goldCable, <ore:stickWood>));
recipes.addShaped("industrialwires_goldCoil_treated", goldCoil.withTag({wireLength: 1}) * 4,
    wire(goldCable, <ore:stickTreatedWood>));
recipes.addShaped("industrialwires_goldInsulatedCoil", goldInsulatedCoil.withTag({wireLength: 1}) * 4,
    wire(goldInsulated_x2_Cable, <ore:stickWood>));
recipes.addShaped("industrialwires_goldInsulatedCoil_treated", goldInsulatedCoil.withTag({wireLength: 1}) * 4,
    wire(goldInsulated_x2_Cable, <ore:stickTreatedWood>));
// itemIronCable
recipes.addShaped("industrialwires_ironCoil", ironCoil.withTag({wireLength: 1}) * 4,
    wire(ironCable, <ore:stickWood>));
recipes.addShaped("industrialwires_ironCoil_treated", ironCoil.withTag({wireLength: 1}) * 4,
    wire(ironCable, <ore:stickTreatedWood>));


// add new cables
// aluminum
MetalFormer.addExtrudingRecipe(<item:contenttweaker:cable_aluminum> * 3, <ore:ingotAluminum>);
MetalFormer.addCuttingRecipe(<item:contenttweaker:cable_aluminum> * 3, <ore:plateAluminum>);
// electrum
MetalFormer.addExtrudingRecipe(<item:contenttweaker:cable_electrum> * 3, <ore:ingotElectrum>);
MetalFormer.addCuttingRecipe(<item:contenttweaker:cable_electrum> * 3, <ore:plateElectrum>);
// steel
MetalFormer.addExtrudingRecipe(<item:contenttweaker:cable_steel> * 3, <ore:ingotSteel>);
MetalFormer.addCuttingRecipe(<item:contenttweaker:cable_steel> * 3, <ore:plateSteel>);

// add new wires
// gold
MetalPress.addRecipe(<item:contenttweaker:wire_gold> * 2, <ore:ingotGold>, <immersiveengineering:mold:4>, 2400, 1);
// iron
MetalPress.addRecipe(<item:contenttweaker:wire_iron> * 2, <ore:ingotIron>, <immersiveengineering:mold:4>, 2400, 1);
// tin
MetalPress.addRecipe(<item:contenttweaker:wire_tin> * 2, <ore:ingotTin>, <immersiveengineering:mold:4>, 2400, 1);