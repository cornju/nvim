return {
  {
    "drop-stones/im-switch.nvim",
    event = "VeryLazy",
    opts = {
      mode = "restore",
    },
    config = function(_, opts)
      require("im-switch").setup(opts)

      local im = require("im-switch.im")
      local group = vim.api.nvim_create_augroup("user-im-switch-normal-default", { clear = true })

      im.set_default_im()

      vim.api.nvim_create_autocmd("ModeChanged", {
        group = group,
        pattern = "*:n",
        callback = function()
          im.set_default_im()
        end,
      })
    end,
  },
}
