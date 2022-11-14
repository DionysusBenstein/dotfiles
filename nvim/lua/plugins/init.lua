require('plugins.disable_builtins')

local utils = require('utils')
local plugin_list = require('plugins.plugin_list')

local packer_bootstrap = utils.initialize_packer()
local status_ok, packer = pcall(require, 'packer')

if status_ok then
  return packer.startup(function(use)
    for key, plugin in pairs(plugin_list) do
      if type(key) == 'string' and not plugin[1] then
        plugin[1] = key
      end

      use(plugin)
    end

    if packer_bootstrap then
      packer.sync()
    end
  end)
end

