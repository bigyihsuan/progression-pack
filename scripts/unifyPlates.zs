import mods.ic2.BlockCutter;
import mods.ic2.MetalFormer;
import crafttweaker.item.IItemStack;

// unidict did most of the work for us, just need to add in things
// tin - engineer
// silver - forge, block 3, metal
// aluminum - forge, block 3, metal
// nickel - forge, block 3, metal
// platinum - engineer, forge, block 9, metal
// iridium - engineer, forge, block 9, metal
// mana - engineer, forge, block 9, metal
// steel - engineer
// electrum - block 3, metal
// invar - engineer, forge, block 6, metal
// bronze - engineer
// constnatan - forge, block 3, metal
// signalum - forge, engineer, block 9, metal
// lumium - forge, engineer
// enderium - forge, engineer, block 9, metal

mods.unidict.removalByKind.get("Crafting").remove("plate");

recipes.addShapeless(
    "engineers_hammer_iron",
    <thermalfoundation:material:32>,
    [<immersiveengineering:tool>, <ore:ingotIron>, <ore:ingotIron>]
);
recipes.addShapeless(
    "forge_hammer_iron",
    <thermalfoundation:material:32>,
    [<ic2:forge_hammer>, <ore:ingotIron>, <ore:ingotIron>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:32>, <ore:ingotIron>);

recipes.addShapeless(
    "engineers_hammer_gold",
    <thermalfoundation:material:33>,
    [<immersiveengineering:tool>, <ore:ingotGold>, <ore:ingotGold>]
);
recipes.addShapeless(
    "forge_hammer_gold",
    <thermalfoundation:material:33>,
    [<ic2:forge_hammer>, <ore:ingotGold>, <ore:ingotGold>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:33>, <ore:ingotGold>);

recipes.addShapeless(
    "engineers_hammer_copper",
    <thermalfoundation:material:320>,
    [<immersiveengineering:tool>, <ore:ingotCopper>, <ore:ingotCopper>]
);
recipes.addShapeless(
    "forge_hammer_copper",
    <thermalfoundation:material:320>,
    [<ic2:forge_hammer>, <ore:ingotCopper>, <ore:ingotCopper>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:320>, <ore:ingotCopper>);

recipes.addShapeless(
    "engineers_hammer_lead",
    <thermalfoundation:material:323>,
    [<immersiveengineering:tool>, <ore:ingotLead>, <ore:ingotLead>]
);
recipes.addShapeless(
    "forge_hammer_lead",
    <thermalfoundation:material:323>,
    [<ic2:forge_hammer>, <ore:ingotLead>, <ore:ingotLead>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:323>, <ore:ingotLead>);

recipes.addShapeless(
    "engineers_hammer_ardite",
    <jaopca:item_plateardite>,
    [<immersiveengineering:tool>, <ore:ingotArdite>, <ore:ingotArdite>]
);
recipes.addShapeless(
    "forge_hammer_ardite",
    <jaopca:item_plateardite>,
    [<ic2:forge_hammer>, <ore:ingotArdite>, <ore:ingotArdite>]
);
MetalFormer.addRollingRecipe(<jaopca:item_plateardite>, <ore:ingotArdite>);
BlockCutter.addRecipe(<jaopca:item_plateardite> * 9, <ore:blockArdite>, 9);

recipes.addShapeless(
    "engineers_hammer_boron",
    <jaopca:item_plateboron>,
    [<immersiveengineering:tool>, <ore:ingotBoron>, <ore:ingotBoron>]
);
recipes.addShapeless(
    "forge_hammer_boron",
    <jaopca:item_plateboron>,
    [<ic2:forge_hammer>, <ore:ingotBoron>, <ore:ingotBoron>]
);
MetalFormer.addRollingRecipe(<jaopca:item_plateboron>, <ore:ingotBoron>);
BlockCutter.addRecipe(<jaopca:item_plateboron> * 9, <ore:blockBoron>, 3);

recipes.addShapeless(
    "engineers_hammer_cobalt",
    <jaopca:item_platecobalt>,
    [<immersiveengineering:tool>, <ore:ingotCobalt>, <ore:ingotCobalt>]
);
recipes.addShapeless(
    "forge_hammer_cobalt",
    <jaopca:item_platecobalt>,
    [<ic2:forge_hammer>, <ore:ingotCobalt>, <ore:ingotCobalt>]
);
MetalFormer.addRollingRecipe(<jaopca:item_platecobalt>, <ore:ingotCobalt>);
BlockCutter.addRecipe(<jaopca:item_platecobalt> * 9, <ore:blockCobalt>, 9);

recipes.addShapeless(
    "engineers_hammer_lithium",
    <jaopca:item_platelithium>,
    [<immersiveengineering:tool>, <ore:ingotLithium>, <ore:ingotLithium>]
);
recipes.addShapeless(
    "forge_hammer_lithium",
    <jaopca:item_platelithium>,
    [<ic2:forge_hammer>, <ore:ingotLithium>, <ore:ingotLithium>]
);
MetalFormer.addRollingRecipe(<jaopca:item_platelithium>, <ore:ingotLithium>);

recipes.addShapeless(
    "engineers_hammer_magnesium",
    <jaopca:item_platemagnesium>,
    [<immersiveengineering:tool>, <ore:ingotMagnesium>, <ore:ingotMagnesium>]
);
recipes.addShapeless(
    "forge_hammer_magnesium",
    <jaopca:item_platemagnesium>,
    [<ic2:forge_hammer>, <ore:ingotMagnesium>, <ore:ingotMagnesium>]
);
MetalFormer.addRollingRecipe(<jaopca:item_platemagnesium>, <ore:ingotMagnesium>);

recipes.addShapeless(
    "engineers_hammer_osmium",
    <jaopca:item_plateosmium>,
    [<immersiveengineering:tool>, <ore:ingotOsmium>, <ore:ingotOsmium>]
);
recipes.addShapeless(
    "forge_hammer_osmium",
    <jaopca:item_plateosmium>,
    [<ic2:forge_hammer>, <ore:ingotOsmium>, <ore:ingotOsmium>]
);
MetalFormer.addRollingRecipe(<jaopca:item_plateosmium>, <ore:ingotOsmium>);
BlockCutter.addRecipe(<jaopca:item_plateosmium> * 9, <ore:blockOsmium>, 9);

recipes.addShapeless(
    "engineers_hammer_thorium",
    <jaopca:item_platethorium>,
    [<immersiveengineering:tool>, <ore:ingotThorium>, <ore:ingotThorium>]
);
recipes.addShapeless(
    "forge_hammer_thorium",
    <jaopca:item_platethorium>,
    [<ic2:forge_hammer>, <ore:ingotThorium>, <ore:ingotThorium>]
);
MetalFormer.addRollingRecipe(<jaopca:item_platethorium>, <ore:ingotThorium>);

recipes.addShapeless(
    "engineers_hammer_uranium",
    <immersiveengineering:metal:35>,
    [<immersiveengineering:tool>, <ore:ingotUranium>, <ore:ingotUranium>]
);
recipes.addShapeless(
    "forge_hammer_uranium",
    <immersiveengineering:metal:35>,
    [<ic2:forge_hammer>, <ore:ingotUranium>, <ore:ingotUranium>]
);
MetalFormer.addRollingRecipe(<immersiveengineering:metal:35>, <ore:ingotUranium>);

recipes.addShapeless(
    "engineers_hammer_tin",
    <thermalfoundation:material:321>,
    [<immersiveengineering:tool>, <ore:ingotTin>, <ore:ingotTin>]
);
recipes.addShapeless(
    "forge_hammer_tin",
    <thermalfoundation:material:321>,
    [<ic2:forge_hammer>, <ore:ingotTin>, <ore:ingotTin>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:321>, <ore:ingotTin>);

recipes.addShapeless(
    "engineers_hammer_silver",
    <thermalfoundation:material:322>,
    [<immersiveengineering:tool>, <ore:ingotSilver>, <ore:ingotSilver>]
);
recipes.addShapeless(
    "forge_hammer_silver",
    <thermalfoundation:material:322>,
    [<ic2:forge_hammer>, <ore:ingotSilver>, <ore:ingotSilver>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:322>, <ore:ingotSilver>);
BlockCutter.addRecipe(<thermalfoundation:material:322> * 9, <ore:blockSilver>, 3);

recipes.addShapeless(
    "engineers_hammer_aluminum",
    <thermalfoundation:material:324>,
    [<immersiveengineering:tool>, <ore:ingotAluminum>, <ore:ingotAluminum>]
);
recipes.addShapeless(
    "forge_hammer_aluminum",
    <thermalfoundation:material:324>,
    [<ic2:forge_hammer>, <ore:ingotAluminum>, <ore:ingotAluminum>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:324>, <ore:ingotAluminum>);
BlockCutter.addRecipe(<thermalfoundation:material:324> * 9, <ore:blockAluminum>, 3);

recipes.addShapeless(
    "engineers_hammer_nickel",
    <thermalfoundation:material:325>,
    [<immersiveengineering:tool>, <ore:ingotNickel>, <ore:ingotNickel>]
);
recipes.addShapeless(
    "forge_hammer_nickel",
    <thermalfoundation:material:325>,
    [<ic2:forge_hammer>, <ore:ingotNickel>, <ore:ingotNickel>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:325>, <ore:ingotNickel>);
BlockCutter.addRecipe(<thermalfoundation:material:325> * 9, <ore:blockNickel>, 3);

recipes.addShapeless(
    "engineers_hammer_platinum",
    <thermalfoundation:material:326>,
    [<immersiveengineering:tool>, <ore:ingotPlatinum>, <ore:ingotPlatinum>]
);
recipes.addShapeless(
    "forge_hammer_platinum",
    <thermalfoundation:material:326>,
    [<ic2:forge_hammer>, <ore:ingotPlatinum>, <ore:ingotPlatinum>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:326>, <ore:ingotPlatinum>);
BlockCutter.addRecipe(<thermalfoundation:material:326> * 9, <ore:blockPlatinum>, 9);

recipes.addShapeless(
    "engineers_hammer_iridium",
    <thermalfoundation:material:327>,
    [<immersiveengineering:tool>, <ore:ingotIridium>, <ore:ingotIridium>]
);
recipes.addShapeless(
    "forge_hammer_iridium",
    <thermalfoundation:material:327>,
    [<ic2:forge_hammer>, <ore:ingotIridium>, <ore:ingotIridium>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:327>, <ore:ingotIridium>);
BlockCutter.addRecipe(<thermalfoundation:material:327> * 9, <ore:blockIridium>, 9);

recipes.addShapeless(
    "engineers_hammer_mithril",
    <thermalfoundation:material:328>,
    [<immersiveengineering:tool>, <ore:ingotMithril>, <ore:ingotMithril>]
);
recipes.addShapeless(
    "forge_hammer_mithril",
    <thermalfoundation:material:328>,
    [<ic2:forge_hammer>, <ore:ingotMithril>, <ore:ingotMithril>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:328>, <ore:ingotMithril>);
BlockCutter.addRecipe(<thermalfoundation:material:328> * 9, <ore:blockMithril>, 9);

recipes.addShapeless(
    "engineers_hammer_steel",
    <thermalfoundation:material:352>,
    [<immersiveengineering:tool>, <ore:ingotSteel>, <ore:ingotSteel>]
);
recipes.addShapeless(
    "forge_hammer_steel",
    <thermalfoundation:material:352>,
    [<ic2:forge_hammer>, <ore:ingotSteel>, <ore:ingotSteel>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:352>, <ore:ingotSteel>);

recipes.addShapeless(
    "engineers_hammer_electrum",
    <thermalfoundation:material:353>,
    [<immersiveengineering:tool>, <ore:ingotElectrum>, <ore:ingotElectrum>]
);
recipes.addShapeless(
    "forge_hammer_electrum",
    <thermalfoundation:material:353>,
    [<ic2:forge_hammer>, <ore:ingotElectrum>, <ore:ingotElectrum>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:353>, <ore:ingotElectrum>);
BlockCutter.addRecipe(<thermalfoundation:material:353> * 9, <ore:blockElectrum>, 3);

recipes.addShapeless(
    "engineers_hammer_invar",
    <thermalfoundation:material:354>,
    [<immersiveengineering:tool>, <ore:ingotInvar>, <ore:ingotInvar>]
);
recipes.addShapeless(
    "forge_hammer_invar",
    <thermalfoundation:material:354>,
    [<ic2:forge_hammer>, <ore:ingotInvar>, <ore:ingotInvar>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:354>, <ore:ingotInvar>);
BlockCutter.addRecipe(<thermalfoundation:material:354> * 9, <ore:blockInvar>, 6);

recipes.addShapeless(
    "engineers_hammer_bronze",
    <thermalfoundation:material:355>,
    [<immersiveengineering:tool>, <ore:ingotBronze>, <ore:ingotBronze>]
);
recipes.addShapeless(
    "forge_hammer_bronze",
    <thermalfoundation:material:355>,
    [<ic2:forge_hammer>, <ore:ingotBronze>, <ore:ingotBronze>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:355>, <ore:ingotBronze>);

recipes.addShapeless(
    "engineers_hammer_constantan",
    <thermalfoundation:material:356>,
    [<immersiveengineering:tool>, <ore:ingotConstantan>, <ore:ingotConstantan>]
);
recipes.addShapeless(
    "forge_hammer_constantan",
    <thermalfoundation:material:356>,
    [<ic2:forge_hammer>, <ore:ingotConstantan>, <ore:ingotConstantan>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:356>, <ore:ingotConstantan>);
BlockCutter.addRecipe(<thermalfoundation:material:356> * 9, <ore:blockConstantan>, 3);

recipes.addShapeless(
    "engineers_hammer_signalum",
    <thermalfoundation:material:357>,
    [<immersiveengineering:tool>, <ore:ingotSignalum>, <ore:ingotSignalum>]
);
recipes.addShapeless(
    "forge_hammer_signalum",
    <thermalfoundation:material:357>,
    [<ic2:forge_hammer>, <ore:ingotSignalum>, <ore:ingotSignalum>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:357>, <ore:ingotSignalum>);
BlockCutter.addRecipe(<thermalfoundation:material:357> * 9, <ore:blockSignalum>, 9);

recipes.addShapeless(
    "engineers_hammer_lumium",
    <thermalfoundation:material:358>,
    [<immersiveengineering:tool>, <ore:ingotLumium>, <ore:ingotLumium>]
);
recipes.addShapeless(
    "forge_hammer_lumium",
    <thermalfoundation:material:358>,
    [<ic2:forge_hammer>, <ore:ingotLumium>, <ore:ingotLumium>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:358>, <ore:ingotLumium>);
BlockCutter.addRecipe(<thermalfoundation:material:358> * 9, <ore:blockLumium>, 9);

recipes.addShapeless(
    "engineers_hammer_enderium",
    <thermalfoundation:material:359>,
    [<immersiveengineering:tool>, <ore:ingotEnderium>, <ore:ingotEnderium>]
);
recipes.addShapeless(
    "forge_hammer_enderium",
    <thermalfoundation:material:359>,
    [<ic2:forge_hammer>, <ore:ingotEnderium>, <ore:ingotEnderium>]
);
MetalFormer.addRollingRecipe(<thermalfoundation:material:359>, <ore:ingotEnderium>);
BlockCutter.addRecipe(<thermalfoundation:material:359> * 9, <ore:blockEnderium>, 9);

