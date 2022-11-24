for _, source in ipairs {
  'plugins',
  'core.options',
  'core.mappings',
  'core.diagnostics',
} do
  local status_ok, fault = pcall(require, source)

  if not status_ok then
    vim.api.nvim_err_writeln('Failed to load ' .. source .. '\n\n' .. fault)
  end
end

local colorscheme = 'tokyonight'

local status_ok, _ = pcall(require, colorscheme)
if status_ok then
  vim.cmd('colorscheme ' .. colorscheme)
end

