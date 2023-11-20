local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")



local opts = {
  sources = {
    --[[ null_ls.builtins.diagnostics.eslint, ]]
    null_ls.builtins.formatting.prettier,
  },
  on_attach = function(client, bufnr)
    local nmap = function(keys, func, desc)
      if desc then
        desc = 'LSP: ' .. desc
      end

      vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
      nmap('<leader>fm', vim.lsp.buf.format, '[F]ormat with null-ls')
    end
  end,
}

return opts
