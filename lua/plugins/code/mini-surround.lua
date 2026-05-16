return {
  'nvim-mini/mini.surround',
  version = '*',
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    mappings = {
      add = 'ms',
      delete = 'md',
      replace = 'mr',
    },
  }
}
