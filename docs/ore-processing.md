# Ore Processing

ore processing for rare byproducts (iridium, mana dust)

based on `Feed the Factory` and `Brass` ore processing

## Philosophy

Each major ore (iron, gold, copper, tin, aluminum, lead, silver, nickel, osmium)
can be combined with some liquid chemical for ore processing for byproducts.

These byproducts are used for late-mod materials.

Each ore(/set of ores?) has a chemical it can be mixed with.

The byproduct-focused chain starts with ore and a chemical, and ends with IC2/JAOPA Crushed Ore.

In total, you can get 8 dust + 2 byproduct nuggets + 1 crushed ore per 1 ore.

IC2/JAOPA Crushed Ore can be treated as ore for Mekanism ore processing.

| Ore      | Acid              | Byproduct       |
| -------- | ----------------- | --------------- |
| Iron     | Hydrogen Chloride | ***Iridium***   |
| Gold     | Hydrogen Chloride | Silver          |
| Tin      | Hydrogen Chloride | Iron            |
| Aluminum | Hydrogen Chloride | Iron            |
| Copper   | Nitric Acid       | Tin             |
| Lead     | Nitric Acid       | Silver          |
| Silver   | Nitric Acid       | Lead            |
| Nickel   | Nitric Acid       | Platinum        |
| Osmium   | Nitric Acid       | ***Manganese*** |

## iridium

this is an ic2-level recipe

* iron ore + 1000 hydrogen chloride (f) =(IE Mixer)= 1000 Ferrous Chloride Solution (bright green) + 500 hydrogen
* 1000 Ferrous Chloride Solution =(BC Heater, cooling)= 1000 Cold Ferrous Chloride Solution
* 1000 Cold Ferrous Chloride Solution =(BC Heater, cooling)= 1000 Freezing Ferrous Chloride Solution
* 500 Freezing Ferrous Chloride Solution + Dust =(IC2 canning machine, fluid+item = item)= 1 Ferrous Crystal
* 1 FeCl2 Crystal =(IC2 Macerator)= 2 Crushed Ferrous
* 1 Crushed Ferrous =(IC2 Ore Washer)= 1 Ferrous Dust + 1 iridium shard + 1 Iron Dust
* 1 Ferrous Dust =(IC2 Thermal Centrifuge)= 1 Iron Dust + 1 iridium shard + 1 Crushed Iron Ore

### Totals

* 1x ore
* = 2 crystal
* = 4 crushed
* = 4 Fe Dust
* = 8 iron dust + 2 iridium shard + 1 crushed iron

```mermaid
flowchart TD
classDef item fill:#660,color:white;
classDef fluid fill:#009,color:white;
classDef machine fill:#666,color:white;

ore[Ore]:::item
acid{{Acid}}:::fluid
acidSolution{{Metal-ous Solution}}:::fluid
dust[CON Dust Block]:::item
crystal[Metal-ous Crystal]:::item
crushed[Crushed Metal-ous Crystal]:::item
dustMetalous[Metal-ous Dust]:::item
byproductNugget[Byproduct Nugget]:::item
oreCrushed[Crushed Ore]:::item
dustMetal[Metal Dust]:::item

ore -- 1x --> acidSolution
acid -- 1000mB --> acidSolution
acidSolution -- 2x --> crystal

dust -- 1x --> crystal

crystal -- 2x --> crushed

crushed -- 1x --> dustMetalous
crushed -- 1x --> dustMetal

dustMetalous -- +1 --> byproductNugget
crushed -- +1 --> byproductNugget
dustMetalous -- 1x --> dustMetal & oreCrushed
```

<!---
```mermaid
flowchart TD
classDef item fill:#660;
classDef fluid fill:#009;
classDef machine fill:#666;

class it item
class fl fluid
class ma machine

subgraph t0 [Tier 0: Furnaces]
smelt([Smelting x1]):::machine
end
subgraph t1 [Tier 1: Tinkers]
melt([Melting x2]):::machine
cast([Casting x1]):::machine
end
subgraph t2 [Tier 2: Immersive]

end
ore[Ore]:::item
ingot[Ingot]:::item
dust[Dust]:::item
clump[Clump]:::item
shard[Shard]:::item

ic2Crushed[IC2 Crushed x2]:::item
ic2Thermal([IC2 Thermal Centrifuge x1.22]):::machine
ic2Washing([IC2 Ore Washing x1.11]):::machine

tioCrushed[TIO Crushed]:::item
tioCrushing([TIO Crushing x1-3]):::machine
tioPure{{TIO Pure x1}}:::fluid

highoven([High Oven x2.5]):::machine

molten{{Molten}}:::fluid

mekSlurry{{Slurry}}:::fluid
mekDissolution([Dissolution 1000mB]):::machine
mekChemWash([Chemical Washer x1]):::machine
mekChemCrys([Chemical Crystalizer x5]):::machine
mekChemInject([Chemical Injector x4]):::machine
mekPurif([Purification Chamber x3]):::machine

pulv([Pulverizing x2]):::machine
pulvTect([Pulverizing + Tectonic x3]):::machine
arc([Arc Furnace x2]):::machine

anodizer([Smelting + Flux Anodizer x2]):::machine

indsand([Induction + Sand x2]):::machine
indrich([Induction + Rich Slag x3]):::machine
indcinn([Induction + Cinnabar x3]):::machine
indsandOyro([Induction + Pyro + Sand x3]):::machine
indrichOyro([Induction + Pyro + Rich Slag x4]):::machine
indcinnOyro([Induction + Pyro + Cinnabar x4]):::machine

ifWashing([IF Meat Washing 150mB]):::machine
ifFermentation([IF Fermentation x2]):::machine
ifSieving([IF Fluid Sieving x100mB]):::machine

eioSag([EIO SAG Mill x2-4+]):::machine
```
-->
