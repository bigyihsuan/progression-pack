// remove using iron furnace
var basicGenerator = <ic2:te:3>;
var solidFuelFirebox = <ic2:te:15>;
var ironFurnace = <ic2:te:46>;
var electricFurnace = <ic2:te:44>;
recipes.removeShaped(
    basicGenerator, 
    [[null,<*>,null],[<*>,<*>,<*>],[null,ironFurnace,null]]
);
recipes.removeShaped(
    solidFuelFirebox, 
    [[null,<*>,null],[<*>,<*>,<*>],[null,ironFurnace,null]]
);

// change electricFurnace recipe to also use a basic machine casing
var basicMachineCasing = <ic2:resource:12>;
recipes.remove(electricFurnace);
recipes.addShaped(
    PACK + "basic_machine_casing_electric_furnace",
    electricFurnace,
    [
        [null,<ore:circuitBasic>,null],
        [<ore:dustRedstone>, ironFurnace, <ore:dustRedstone>],
        [null, basicMachineCasing, null]
    ]
);
