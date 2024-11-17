return {
  {
    "nvim-treesitter/nvim-treesitter",
    "haydenmeade/neotest-jest",
  },
  {
    "nvim-neotest/neotest",
    dependencies = { "haydenmeade/neotest-jest" },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "corepack yarn node test-runner.mjs",
          jestConfigFile = "jest.config.cjs",
          cwd = function()
            return vim.fn.getcwd()
          end,
        })
      )
    end,
  },
}
