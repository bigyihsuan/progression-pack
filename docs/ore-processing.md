# Ore Processing

ore processing for rare byproducts (iridium, mana dust)

based on `Feed the Factory` and `Brass` ore processing

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
