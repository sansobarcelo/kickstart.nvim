return {
  {
    'echasnovski/mini.surround',
    version = '*',
    opts = {
      search_method = 'cover_or_prev',
    },
    config = function(_, opts)
      require('mini.surround').setup(opts)
    end,
  },
}
