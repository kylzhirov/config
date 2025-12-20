return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.indent = opts.indent or {}
      opts.indent.disable = vim.tbl_extend("force", opts.indent.disable or {}, { "html" })
    end,
  },
}

