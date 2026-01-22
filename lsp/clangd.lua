return {
  cmd = {
    'clangd',
    -- '--query-driver=' .. vim.g.clangd_query_driver,
    '--query-driver=/opt/sdks/**/*linux-g++',
    '--clang-tidy',
  },
  root_markers = { '.clangd', 'compile_commands.json' },
  filetypes = { 'c', 'cpp' },
}
