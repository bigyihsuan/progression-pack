#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var cable_aluminum = VanillaFactory.createItem("cable_aluminum");
var cable_electrum = VanillaFactory.createItem("cable_electrum");
var cable_steel = VanillaFactory.createItem("cable_steel");
var wire_gold = VanillaFactory.createItem("wire_gold");
var wire_iron = VanillaFactory.createItem("wire_iron");
var wire_tin = VanillaFactory.createItem("wire_tin");

cable_aluminum.register();
cable_electrum.register();
cable_steel.register();
wire_gold.register();
wire_iron.register();
wire_tin.register();