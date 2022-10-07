#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var liquidRubber = VanillaFactory.createFluid("rubber", Color.fromHex("4D4D22"));
var dilutedOil = VanillaFactory.createFluid("oil_diluted", Color.fromHex("000020"));

liquidRubber.register();
dilutedOil.register();