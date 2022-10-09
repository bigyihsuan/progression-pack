import mods.immersivetechnology.HeatExchanger;

// TODO: Unify IT Molten Sodium + MEK Liquid Sodium
// all recipes with MEK <liquid:liqudsodium> have IT <liquid:moltensodium> added
//? hide recipes with MEK Liquid Sodium

// TODO: Unify IT Chlorine + MEK Chlorine
// all recipes with MEK Chlorine have IT Chlorine added
//? hide recipes with MEK Chlorine

// change bc heat exchanger to be not worth it after completing ie chapter
// use stainless steel
var bcHeatExchanger = <buildcraftfactory:heat_exchange>;
recipes.replaceAllOccurrences(<ore:ingotIron>, <ore:blockSheetmetalStainless>, bcHeatExchanger);
recipes.replaceAllOccurrences(<ore:gearIron>, <ore:gearSteel>, bcHeatExchanger);

// re-add heat exchanger recipes for oil
var sodium = <liquid:moltensodium>;
var sodiumHeated = <liquid:superheatedmoltensodium>;
var oilCold = <liquid:oil>;
var oilHot = <liquid:oil_heat_1>;
var oilSearing = <liquid:oil_heat_2>;
// 80 heated sodium + 100 cold oil = 80 sodium + 100 hot oil
// 80 heated sodium + 100 hot oil = 80 sodium + 100 searing oil
// public static HeatExchangerRecipe addRecipe(
//    FluidStack fluidOutput0, FluidStack fluidOutput1,
//    FluidStack fluidInput0, FluidStack fluidInput1,
//    int energy, int time) // energy = rf per recipe
HeatExchanger.addRecipe(
    sodium * 80, oilHot * 100,
    sodiumHeated * 80, oilCold * 100,
    1024*5, 5);

HeatExchanger.addRecipe(
    sodium * 80, oilSearing * 100,
    sodiumHeated * 80, oilHot * 100,
    1024*5, 5);