# Quests: Immersive Engineering/Petrol/Decor/Doors/Tech

```mermaid
flowchart TD
subgraph Tinker's Construct
tic[Tinker's Construct]
seared[Seared Brick]
end
tic --> seared --> oven

%% machines
engi_table[Engineer's Workbench]
auto_table[Automated Workbench]
press[Metal Press]
mixer[Mixer]
refinery[Refinery]
distiller[Distiller]
squeezer[Squeezer]
crusher[Crusher]

subgraph Coke Oven
oven[Coke Oven]
coke[Coal Coke]
creo[Creosote Oil]
treat[Treated Wood]
brick[Treated Bricks, ContentTweaker]
end
subgraph Alloys
kiln[Alloy Kiln]
bronze[Bronze]
invar[Invar]
end
subgraph engin [Engineering Blocks]
light[Light Engineering Block]
heavy[Heavy Engineering Block]
redst[Redstone Engineering Block]
end
subgraph Steel
pri_blast[Primitive Blast Furnace]
imp_blast[Improved Blast Furnace]
steel[Steel Ingot]
plate[Steel Plate]
end
subgraph Graphite
hop[HOP Graphite Dust,Ingot]
electrode[Graphite Electrodes]
end
subgraph Stainless Steel
staini[Stainless Ingot]
staind[Stainless Dust]
stainb[Impure Stainless Blend]
arc[Arc Furnace]
end
molds[Metal Press Molds]
subgraph Vanilla
nether[The Nether]
blaze[Blaze Dust]
end

oven --> coke & creo
creo --> treat & brick
treat --> engi_table --> auto_table
engi_table --> molds

brick --> kiln --> bronze & invar
bronze --> light
invar --> heavy

nether --> blaze --> pri_blast

coke & pri_blast --> steel
steel --> engin
steel --> plate
plate --> imp_blast --> arc
plate --> molds --> press

engin --> press & auto_table & arc & mixer & refinery & distiller & squeezer & crusher

coke & squeezer & crusher --> hop --> electrode --> arc

staini --> IndustrialCraft2
arc --> stainb --> staind -->  staini

```
