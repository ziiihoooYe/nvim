return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_gitignored = false,
          use_libuv_file_watcher = true,
        },
      },
    },
  },
}
