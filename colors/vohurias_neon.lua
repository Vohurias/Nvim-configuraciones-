-- Limpiar resaltados previos
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "vohurias_neon"

local n = {
  magenta = "#ff007c",
  cian = "#4fd6be",
  azul = "#7aa2f7",
  naranja = "#ff9e64",
  amarillo = "#ffdb69",
  verde = "#9ece6a",
  rojo = "#f7768e",
  purpura = "#bb9af7",
  gris = "#565f89",
  texto = "#cfc9c2",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- --- TRANSPARENCIA TOTAL Y UI ---
hi("Normal", { fg = n.texto, bg = "NONE" })
hi("NormalFloat", { fg = n.texto, bg = "NONE" })
hi("FloatBorder", { fg = n.magenta, bg = "NONE" })
hi("StatusLine", { bg = "NONE" })

hi("StatusLineNC", { bg = "NONE" })
hi("CursorLine", { bg = "NONE", fg = "#ffffff" })
hi("CursorLineNr", { fg = n.magenta, bold = true, underline = true })
hi("LineNr", { fg = n.gris })

-- --- SINTAXIS NEÓN ---
hi("Keyword", { fg = n.magenta, bold = true })
hi("Function", { fg = n.azul, bold = true })
hi("Type", { fg = n.cian })
hi("Variable", { fg = n.naranja })
hi("String", { fg = n.verde })
hi("Number", { fg = n.amarillo })
hi("Operator", { fg = n.rojo })
hi("Delimiter", { fg = n.purpura })
hi("Comment", { fg = n.gris, italic = true })

-- --- PLUGINS (LAZY/MASON) ---
hi("LazyNormal", { bg = "NONE" })
hi("MasonNormal", { bg = "NONE" })
hi("Pmenu", { bg = "NONE", fg = n.cian })
hi("PmenuSel", { bg = n.magenta, fg = "#000000", bold = true })

hi("IblIndent", { fg = "#2a2b3c" })
hi("IblScope", { fg = "#ff007c" })

hi("WinBar", { bg = "NONE" })
hi("WinBarNC", { bg = "NONE" })
hi("NormalFloat", { bg = "NONE" })
hi("FloatBorder", { fg = "#ff007c", bg = "NONE" })
hi("LazyNormal", { bg = "NONE" })
hi("MasonNormal", { bg = "NONE" })

hi("CursorLine", { bg = "NONE", underline = false })
hi("CursorLineNr", { fg = "#ff007c", bold = true })

hi("Keyword", { fg = "#ff007c", bold = true })
hi("Function", { fg = "#b4f9f8", bold = true })
hi("Variable", { fg = "#ff9e64" })
hi("Type", { fg = "#0db9d7" })
hi("String", { fg = "#9ece6a" })
hi("Constant", { fg = "#ff9e64" })
hi("Number", { fg = "#ffdb69" })
hi("Delimiter", { fg = "#89ddff" })
hi("Operator", { fg = "#f7768e" })

hi("TabLine", { bg = "NONE" })
hi("TabLineFill", { bg = "NONE" })
hi("TabLineSel", { fg = "#ff007c", bg = "NONE", bold = true })

hi("WinSeparator", { fg = "#ff007c", bg = "NONE" }) -- Palabras clave (if, else, return, etc)

-- Colores para las líneas de indentación
hi("IblIndent", { fg = "#2a2b3c" }) -- Líneas normales (oscuras)
hi("IblScope", { fg = "#ff007c" }) -- Línea del bloque actual (Magenta Neón)

-- Colores para los paréntesis arcoíris
hi("RainbowDelimiterRed", { fg = "#f7768e" })
hi("RainbowDelimiterYellow", { fg = "#ffdb69" })
hi("RainbowDelimiterBlue", { fg = "#7aa2f7" })
hi("RainbowDelimiterOrange", { fg = "#ff9e64" })
hi("RainbowDelimiterGreen", { fg = "#9ece6a" })
hi("RainbowDelimiterViolet", { fg = "#bb9af7" })
hi("RainbowDelimiterCyan", { fg = "#0db9d7" })
