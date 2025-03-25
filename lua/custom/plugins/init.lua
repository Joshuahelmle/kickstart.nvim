-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',

    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>A', function()
        harpoon:list():prepend()
      end, { desc = 'Prepends current File to harpoon' })
      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = 'Prepends current File to harpoon' })
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', '<C-h>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-t>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-n>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-s>', function()
        harpoon:list():select(4)
      end)
      vim.keymap.set('n', '<leader><C-h>', function()
        harpoon:list():replace_at(1)
      end)
      vim.keymap.set('n', '<leader><C-t>', function()
        harpoon:list():replace_at(2)
      end)
      vim.keymap.set('n', '<leader><C-n>', function()
        harpoon:list():replace_at(3)
      end)
      vim.keymap.set('n', '<leader><C-s>', function()
        harpoon:list():replace_at(4)
      end)
    end,
  },
}
