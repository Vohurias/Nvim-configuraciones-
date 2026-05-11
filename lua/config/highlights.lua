local hl = vim.api.nvim_set_hl

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- TRANSPARENCIA GENERAL
    hl(0, "Normal", { bg = "NONE" })
    hl(0, "NormalNC", { bg = "NONE" })

    -- FLOATS
    hl(0, "NormalFloat", { bg = "NONE" })
    hl(0, "FloatBorder", {
      bg = "NONE",
      fg = "#ff007c",
    })

    -- STATUSLINE
    hl(0, "StatusLine", { bg = "NONE" })
    hl(0, "StatusLineNC", { bg = "NONE" })

    -- LUALINE
    hl(0, "lualine_a_normal", { bg = "NONE" })
    hl(0, "lualine_b_normal", { bg = "NONE" })
    hl(0, "lualine_c_normal", { bg = "NONE" })

    hl(0, "lualine_a_insert", { bg = "NONE" })
    hl(0, "lualine_b_insert", { bg = "NONE" })
    hl(0, "lualine_c_insert", { bg = "NONE" })

    hl(0, "lualine_a_visual", { bg = "NONE" })
    hl(0, "lualine_b_visual", { bg = "NONE" })
    hl(0, "lualine_c_visual", { bg = "NONE" })

    hl(0, "lualine_a_replace", { bg = "NONE" })
    hl(0, "lualine_b_replace", { bg = "NONE" })
    hl(0, "lualine_c_replace", { bg = "NONE" })

    -- LAZY
    hl(0, "LazyNormal", { bg = "NONE" })

    -- SNACKS
    hl(0, "SnacksNormal", { bg = "NONE" })
    hl(0, "SnacksPicker", { bg = "NONE" })

    -- POPUPS
    hl(0, "Pmenu", { bg = "NONE" })
    hl(0, "WinSeparator", {
      bg = "NONE",
      fg = "#ff007c",
    })
  end,
})
