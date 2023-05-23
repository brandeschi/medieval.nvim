local M = {}

M.palette = {
    -- basicallyBlack = "#0B0C0D", -- BG
    basicallyBlack = "#1F2021", -- BG
    silentSlate =    "#17191B", -- CursorLine color
    willingWhite =   "#C4C2BF", -- () & {} & []
    traditionalTan = "#DCC091", -- Normal text
    prettyPurple =   "#BAA3F9", -- Macros & builtin stuff
    boldRoyalBlue =  "#4169E1", -- Types/Special
    boringBlue =     "#5572AA", -- Props/slightly less imp than brb
    giantGreen = 	 "#87B494", -- Number/Data
    gleefulGreen =   "#7AB367", -- Functions
    goodGreen =      "#2E9469", -- Strings
    royaleRed =      "#E14169", -- OP symbols
    slightlySilver = "#6C747A", -- Keywords
    -- semiSilver =     "#3F3E41", -- Comments
    semiSilver =     "#525154", -- Comments
    shiningSilver =  "#3B3E41", -- Brighter silentSlate
    broBronze =      "#CD7F32", -- Class/Struct

    -- goodGreen =   "#3ABA84",
    -- proudPink = 	 "#F0A0B4",
    none = "#FF00FF",
}

return M
