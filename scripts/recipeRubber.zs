import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.Squeezer;
import mods.immersivepetroleum.Distillation;
import mods.ic2.Extractor;

// oil_heat_2 = bc VERY HOT oil
var hot_oil = <liquid:oil_heat_2>;
var water = <liquid:water>;
var diluted_oil = <liquid:oil_diluted>;
var resin = <liquid:resin>;
var sticky_resin = <ic2:misc_resource:4>;
var rubber = <liquid:rubber>;
var rubber_item = <ic2:crafting>;

recipes.remove(rubber_item);
furnace.remove(rubber_item); // smelting recipes
// keep mekanism sawmill, by then you'll have rubber set up
// ic2 extractor recipes (remove via ini file)

// remove rubber-plastic ore-dict
<ore:itemRubber>.remove(<industrialforegoing:plastic>);

// remove leather recipe for ie belts
recipes.removeByRecipeName("immersiveengineering:conveyors/conveyor_basic");

// add alternate metal-plate recipe for ie belts
var belt = <immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"});
var plate = <ore:plateIron>;
var redst = <ore:dustRedstone>;
var ingot = <ore:ingotIron>;
recipes.addShaped("conveyor_metal_plate", belt * 2, [
    [plate, plate, plate],
    [ingot, redst, ingot]
]);

// RUBBER CHAIN
// get around how the mixer only takes 1 fluid input
Refinery.addRecipe(diluted_oil * 200, water * 100, hot_oil * 100, 256);
// mix into resin
Mixer.addRecipe(resin * 1000,  diluted_oil * 1000, [sticky_resin], 256);
// distill into rubber
Distillation.addRecipe([rubber * 700, diluted_oil * 100, resin * 200], [sticky_resin], resin * 1000, 1024, 200, [0.1]);
// for the recipes that need rubber item
Distillation.addRecipe([], [rubber_item], rubber * 100, 1024, 20, [1]);
// add sticky resin recipe
Squeezer.addRecipe(sticky_resin, null, <ore:woodRubber>, 256);

// cable insulation
var copperCable              = <ic2:cable>.withTag({type: 0 as byte, insulation: 0 as byte});
var copperInsulated_x1_Cable = <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte});
var glassCable               = <ic2:cable>.withTag({type: 1 as byte, insulation: 0 as byte});
var goldCable                = <ic2:cable:2>.withTag({type: 2 as byte, insulation: 0 as byte});
var goldInsulated_x1_Cable   = <ic2:cable:2>.withTag({type: 2 as byte, insulation: 1 as byte});
var goldInsulated_x2_Cable   = <ic2:cable:2>.withTag({type: 2 as byte, insulation: 2 as byte});
var ironCable                = <ic2:cable:3>.withTag({type: 3 as byte, insulation: 0 as byte});
var ironInsulated_x1_Cable   = <ic2:cable:3>.withTag({type: 3 as byte, insulation: 1 as byte});
var ironInsulated_x2_Cable   = <ic2:cable:3>.withTag({type: 3 as byte, insulation: 2 as byte});
var ironInsulated_x3_Cable   = <ic2:cable:3>.withTag({type: 3 as byte, insulation: 3 as byte});
var tinCable                 = <ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte});
var tinInsulated_x1_Cable    = <ic2:cable:4>.withTag({type: 4 as byte, insulation: 1 as byte});

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

// turn rubber item into rubber fluid
Mixer.addRecipe(rubber * 500,  water * 500, [rubber_item], 256);

var RUB_AMT = 100;

// re-add ic2 cable recipes
BottlingMachine.addRecipe(copperInsulated_x1_Cable, copperCable, rubber * RUB_AMT);
BottlingMachine.addRecipe(goldInsulated_x1_Cable, goldCable, rubber * RUB_AMT);
BottlingMachine.addRecipe(goldInsulated_x2_Cable, goldInsulated_x1_Cable, rubber * RUB_AMT);
BottlingMachine.addRecipe(ironInsulated_x1_Cable, ironCable, rubber * RUB_AMT);
BottlingMachine.addRecipe(ironInsulated_x2_Cable, ironInsulated_x1_Cable, rubber * RUB_AMT);
BottlingMachine.addRecipe(ironInsulated_x3_Cable, ironInsulated_x2_Cable, rubber * RUB_AMT);
BottlingMachine.addRecipe(tinInsulated_x1_Cable, tinCable, rubber * RUB_AMT);

// change ie insulated wires
// remove insulated recipe
var lv_ins = <immersiveengineering:wirecoil:6>;
var mv_ins = <immersiveengineering:wirecoil:7>;
recipes.remove(lv_ins);
recipes.remove(mv_ins);

// make old insulated recipe incredibly expensive (1 uns = 1 ins)
var fabric = <ore:fabricHemp>;
var lvcoil = <immersiveengineering:wirecoil>;
var mvcoil = <immersiveengineering:wirecoil:1>;
recipes.addShaped("expensive_insulated_lv_wirecoil", lv_ins, [
    [fabric, fabric, fabric],
    [fabric, lvcoil, fabric],
    [fabric, fabric, fabric],
]);
recipes.addShaped("expensive_insulated_mv_wirecoil", mv_ins, [
    [fabric, fabric, fabric],
    [fabric, mvcoil, fabric],
    [fabric, fabric, fabric],
]);
// add new bottling machine recipe (1 uns = 1 ins)
BottlingMachine.addRecipe(lv_ins, lvcoil, rubber * RUB_AMT);
BottlingMachine.addRecipe(mv_ins, mvcoil, rubber * RUB_AMT);