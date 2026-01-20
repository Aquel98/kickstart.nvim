vim.o.exrc = true

--- Copied from the nvim repo of maxniia: https://github.com/MaxNiia/nvim/
local settings = {}

---@class options.SettingConfig
---@field name string
---@field default_value string|integer|boolean|table
---@field description string
---@param config options.SettingConfig
local setting = function(config)
  if vim.g[config.name] == nil then
    vim.g[config.name] = config.default_value
  end

  table.insert(settings, config)
end

setting {
  name = 'clangd_query_driver',
  default_value = '/usr/bin/clang, /usr/bin/clang++',
  description = 'Query driver for clangd, where clangd retrieves standard library symbols from.',
}

setting {
  name = 'copyright_text',
  default_value = {
    'Copyright',
    'Year: {YEAR}',
  },
  description = 'Text to insert when copyright is invoked.',
}

vim.g.available_settins = settings
