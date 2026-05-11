return {
  {
    "HiPhish/rainbow-delimiters.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter", -- Agregamos esto para asegurar que funcione con el resaltado
    event = "BufReadPost", -- Se carga solo cuando abres un archivo
    config = function()
      local rb = require("rainbow-delimiters")
      vim.g.rainbow_delimiters = {
        strategy = { [""] = rb.strategy["global"] },
        query = { [""] = "rainbow-delimiters" },
        highlight = {
          "RainbowDelimiterRed",
          "RainbowDelimiterYellow",
          "RainbowDelimiterBlue",
          "RainbowDelimiterOrange",
          "RainbowDelimiterGreen",
          "RainbowDelimiterViolet",
          "RainbowDelimiterCyan",
        },
      }
    end,
  },
}
