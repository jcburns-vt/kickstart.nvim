return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require("harpoon")

      -- REQUIRED
      harpoon:setup()
      -- REQUIRED

      vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, {desc = 'Harpoon: [A]dd file'})
      vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = 'Harpoon: list'})

      vim.keymap.set("n", "<leader>ha", function() harpoon:list():select(1) end, {desc = 'Focus file-1'})
      vim.keymap.set("n", "<leader>hs", function() harpoon:list():select(2) end, {desc = 'Focus file-2'})
      vim.keymap.set("n", "<leader>hd", function() harpoon:list():select(3) end, {desc = 'Focus file-3'})
      vim.keymap.set("n", "<leader>hf", function() harpoon:list():select(4) end, {desc = 'Focus file-4'})

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<S-h>", function() harpoon:list():prev() end, {desc = 'Harpoon: select previous harpoon'})
      vim.keymap.set("n", "<S-l>", function() harpoon:list():next() end, {desc = 'Harpoon: select next harpoon'})

    end,
  },
}
