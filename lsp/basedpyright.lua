return {
  cmd = {
    'basedpyright-langserver',
    '--stdio',
  },
  root_markers = {
    '.git',
  },
  filetypes = {
    'python',
  },
  settings = {
    basedpyright = {
      analysis = {
        diagnosticMode = 'openFilesOnly',
        inlayHints = {
          callArgumentNames = true,
        },
      },
    },
  },
}
