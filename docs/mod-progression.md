# Mod Progression

```mermaid
flowchart TB
VAN[Vanilla]
subgraph TICS [Tinkers]
direction LR
TC[Tinker's Construct]
AC[Armory Construct]
TIO[Tinker's IO]
TCM[Tinker's Complement]
end
subgraph IMMR [Immersive]
direction LR
IE[Immersive Engineering]
IP[Immersive Petroleum]
ED[Engineer's Decor]
end
subgraph INDS [Industrial]
direction LR
IC2[IndustrialCraft2]
FOR[Forestry]
end
subgraph COFH [Thermal]
direction LR
TE[Thermal Expansion]
IF[Industrial Foregoing]
end
subgraph ENDR [Ender]
direction LR
EIO[Ender IO]
end
subgraph NUCC [Nuclear]
direction LR
NUC[NuclearCraft]
DML[Deep Mob Learning]
end
subgraph MECH [Mechanical]
direction LR
MEK[Mekanism]
ENV[Enviromental Tech]
end
subgraph END [End Game]
direction LR
AE2[Applied Energistics 2]
LAE[Lazy AE2]
end

VAN -- Smeltery/Grout --> TICS
TICS -- Manyllyn + Coke Oven --> IMMR
TC -- start --> AC
IE --> IP --> ED
IMMR -- Stainless Steel + Synthetic Rubber --> INDS
INDS -- Coils, Device Casing --> COFH
COFH -- Chassis, Capacitor --> ENDR
ENDR -- Tough Alloy --> NUCC
NUCC -- Destabilized Clathrate,  --> MECH
MECH --> END

%% sidegrades
TC -- Bronze --> TCM
TCM -- Pig Iron --> TIO
MEK --Fusion Reactor stuff--> ENV
IF -- a ton of wither skulls --> DML
AE2 --Singularities-->LAE
```
