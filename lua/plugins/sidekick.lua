return {
  "folke/sidekick.nvim",
  opts = {
    cli = {
      tools = {
        agy = {
          cmd = { "agy" },
        },
      },
    },
  },
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
    {
      "<leader>ag",
      function()
        require("sidekick.cli").toggle("agy")
      end,
      desc = "Sidekick Toggle Antigravity",
    },
  },
}
