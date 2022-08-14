local status_ok, lsp_lines = pcall(require, "lsp_lines")
if not status_ok then
    return
end

vim.keymap.set(
    "",
    "<Leader>l",
    lsp_lines.toggle,
    { desc = "Toggle lsp_lines" }
)
