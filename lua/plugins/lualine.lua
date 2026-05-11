return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      -- Tu paleta neón personalizada
      local neon = {
        magenta = "#ff007c",
        blue = "#7aa2f7",
        cyan = "#4fd6be",
        orange = "#ff9e64",
      }

      return {
        options = {
          -- Usamos "auto" para que herede la transparencia de tu tema propio
          theme = "auto",
          globalstatus = true,
          component_separators = { left = "｜", right = "｜" },
          section_separators = { left = "", right = "" },
        },
        sections = {
          lualine_a = {
            { "mode", color = { fg = neon.magenta, bg = "NONE", gui = "bold" } },
          },
          lualine_b = {
            { "branch", color = { fg = neon.orange, bg = "NONE" } },
          },
          lualine_c = {
            {
              "filename",
              path = 1,
              color = { fg = neon.cyan, bg = "NONE", gui = "bold" },
            },
          },
          lualine_x = {
            { "diagnostics", color = { bg = "NONE" } },
          },
          lualine_y = {
            { "progress", color = { fg = neon.blue, bg = "NONE" } },
          },
          lualine_z = {
            { "location", color = { fg = neon.magenta, bg = "NONE", gui = "bold" } },
          },
        },
      }
    end,
  },
}
