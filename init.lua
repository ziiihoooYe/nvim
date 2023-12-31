if vim.g.vscode then
  return
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")

  -- improve readable for json/josnl file
  vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "*.json", "*.jsonl" },
    command = "set filetype=json",
  })
  --
  vim.api.nvim_create_autocmd("FileType", {
    pattern = { "json", "*jsonl" },
    callback = function()
      vim.api.nvim_buf_set_keymap(0, "n", "<F3>", ":%!jq .<CR>", { noremap = true, silent = true })
    end,
  })

  -- auth copilot
  vim.api.nvim_create_autocmd("VimEnter", {
    pattern = "*",
    command = "Copilot auth",
  })
end
