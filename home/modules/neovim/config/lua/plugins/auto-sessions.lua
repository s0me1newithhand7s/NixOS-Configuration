return {
  {
    'rmagatti/auto-session',
    enable = true,
    lazy = false,

    config = function()
      require("auto-session").setup({
        log_level = "error",
        auto_session_enabled = true,
        auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
        -- auto_session_suppress_dirs = { "~/Code/*" },
        -- auto_session_enable_last_session = true,
        pre_save_cmds = { close_floating_windows, close_toggleterm, "NvimTreeClose" },
	      post_restore_cmds = { clear_jumps, "NvimTreeOpen" },
        save_extra_cmds = { "NvimTreeOpen", },
      })
    end,
  },
}

