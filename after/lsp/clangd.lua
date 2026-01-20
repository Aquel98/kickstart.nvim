return {
  cmd = {
    'clangd',
    '--query-driver=' .. vim.g.clangd_query_driver,
    -- '--query-driver=/opt/sdks/**/*linux-g++',
  },
}
