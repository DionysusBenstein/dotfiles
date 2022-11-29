local navic = require('nvim-navic')
local icons = require('icons')

local get_filename = function()
  local filename = vim.fn.expand "%:t"
  local extension = vim.fn.expand "%:e"

  if not filename == nil or filename == '' then
    local file_icon, file_icon_color =
      require('nvim-web-devicons').get_icon_color(filename, extension, { default = true })

    local hl_group = 'FileIconColor' .. extension

    vim.api.nvim_set_hl(0, hl_group, { fg = file_icon_color })
    if file_icon == nil or file_icon == '' then
      file_icon = lvim.icons.kind.File
    end

    local buf_ft = vim.bo.filetype

    if buf_ft == 'dapui_breakpoints' then
      file_icon = icons.ui.Bug
    end

    if buf_ft == 'dapui_stacks' then
      file_icon = icons.ui.Stacks
    end

    if buf_ft == 'dapui_scopes' then
      file_icon = icons.ui.Scopes
    end

    if buf_ft == 'dapui_watches' then
      file_icon = icons.ui.Watches
    end

    local navic_text = vim.api.nvim_get_hl_by_name("Normal", true)
    vim.api.nvim_set_hl(0, "Winbar", { fg = navic_text.foreground })

    return " " .. "%#" .. hl_group .. "#" .. file_icon .. "%*" .. " " .. "%#Winbar#" .. filename .. "%*"
  end
end

navic.setup {
  icons = {
    Array = icons.kind.Array .. ' ',
    Boolean = icons.kind.Boolean,
    Class = icons.kind.Class .. ' ',
    Color = icons.kind.Color .. ' ',
    Constant = icons.kind.Constant .. ' ',
    Constructor = icons.kind.Constructor .. ' ',
    Enum = icons.kind.Enum .. ' ',
    EnumMember = icons.kind.EnumMember .. ' ',
    Event = icons.kind.Event .. ' ',
    Field = icons.kind.Field .. ' ',
    File = icons.kind.File .. ' ',
    Folder = icons.kind.Folder .. ' ',
    Function = icons.kind.Function .. ' ',
    Interface = icons.kind.Interface .. ' ',
    Key = icons.kind.Key .. ' ',
    Keyword = icons.kind.Keyword .. ' ',
    Method = icons.kind.Method .. ' ',
    Module = icons.kind.Module .. ' ',
    Namespace = icons.kind.Namespace .. ' ',
    Null = icons.kind.Null .. ' ',
    Number = icons.kind.Number .. ' ',
    Object = icons.kind.Object .. ' ',
    Operator = icons.kind.Operator .. ' ',
    Package = icons.kind.Package .. ' ',
    Property = icons.kind.Property .. ' ',
    Reference = icons.kind.Reference .. ' ',
    Snippet = icons.kind.Snippet .. ' ',
    String = icons.kind.String .. ' ',
    Struct = icons.kind.Struct .. ' ',
    Text = icons.kind.Text .. ' ',
    TypeParameter = icons.kind.TypeParameter .. ' ',
    Unit = icons.kind.Unit .. ' ',
    Value = icons.kind.Value .. ' ',
    Variable = icons.kind.Variable .. ' ',
  },

  highlight = true,
  separator = ' ' .. icons.ui.ChevronRight .. ' ',
  depth_limit = 0,
  depth_limit_indicator = '..',
}

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
