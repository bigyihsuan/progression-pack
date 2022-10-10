// akashic tome with all the guide books, made cheaply
recipes.addShapeless(PACK + "akashic_tome_all_guides",
    <akashictome:tome>.withTag({"akashictome:data": {
        tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short},
        conarm: {id: "conarm:book", Count: 1 as byte, tag: {"akashictome:definedMod": "conarm"}, Damage: 0 as short},
        industrialforegoing: {id: "industrialforegoing:book_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "industrialforegoing"}, Damage: 0 as short},
        buildcraftlib: {id: "buildcraftlib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "buildcraftlib"}, Damage: 0 as short},
        ftbquests: {id: "ftbquests:book", Count: 1 as byte, tag: {"akashictome:definedMod": "ftbquests"}, Damage: 0 as short},
        immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short},
        logisticspipes: {id: "logisticspipes:guide_book", Count: 1 as byte, tag: {bookmarks: [], "akashictome:definedMod": "logisticspipes", page: {progress: 1.0 as float, page: "/main_menu.md"}, "version": 1 as byte}, Damage: 0 as short}},
        deepmoblearning: {id: "patchouli:guide_book", Count: 1 as byte, tag: {"akashictome:definedMod": "deepmoblearning", "patchouli:book": "deepmoblearning:book"}, Damage: 0 as short}
    }), [<akashictome:tome>, <minecraft:bookshelf>]);

// morph-o-tool with all wrenches, made cheaply
recipes.addShapeless(PACK + "morphotool_all_tools",
    <morphtool:tool>.withTag({"morphtool:is_morphing": 1 as byte, "morphtool:data": {
        enderio: {id: "enderio:item_yeta_wrench", Count: 1 as byte, tag: {"morphtool:is_morphing": 1 as byte, display: {Name: "§rMorphing Tool (§aYeta Wrench§r)"}, "morphtool:displayName": "Yeta Wrench"}, Damage: 0 as short},
        thermalfoundation: {id: "thermalfoundation:wrench", Count: 1 as byte, Damage: 0 as short},
        immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, Damage: 0 as short}, ic2: {id: "ic2:wrench", Count: 1 as byte, Damage: 0 as short},
        buildcraftcore: {id: "buildcraftcore:wrench", Count: 1 as byte, Damage: 0 as short}, appliedenergistics2: {id: "appliedenergistics2:certus_quartz_wrench", Count: 1 as byte, Damage: 0 as short},
        teslacorelib: {id: "teslacorelib:wrench", Count: 1 as byte, Damage: 0 as short},
        base: {id: "base:wrench", Count: 1 as byte, Damage: 0 as short}}
    }), [<morphtool:tool>, <minecraft:bookshelf>]);