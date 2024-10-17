return {
  {
    "preservim/nerdtree",
    config = function ()
      vim.keymap.set("n", "<leader>n", ":NERDTreeToggle<CR>", {desc = 'Toggle NERDTree'})
      vim.keymap.set("n", "n", ":NERDTreeFocus<CR>", {desc = 'Focus NERDTree'})
    end
  }
}
