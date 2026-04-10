return {
  "andymass/vim-matchup",
  setup = function()
    -- This allows the highlight to appear as soon as you hover
    vim.g.matchup_matchparen_enabled = 1
    vim.g.matchup_matchparen_offscreen = { method = "popup" }
  end,
}
