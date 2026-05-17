return {
  "folke/sidekick.nvim",
  keys = {
    {
      "<leader>aa",
      function()
        require("sidekick.cli").toggle("codex")
      end,
      desc = "Sidekick Toggle Codex",
    },
    {
      "<leader>as",
      function()
        require("sidekick.cli").toggle("opencode")
      end,
      desc = "Sidekick Toggle Opencode",
    },
  },
}
