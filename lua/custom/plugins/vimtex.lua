return {
  {
    'lervag/vimtex',
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = 'zathura'

      vim.api.nvim_create_autocmd('BufWritePost', {
        pattern = { '*.tex', '*.bib' },
        command = 'silent make',
      })
    end,
  },
}
