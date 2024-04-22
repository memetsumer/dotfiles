local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<leader><Left>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader><Right>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<leader>bl', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<leader>br', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<leader>0', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<leader>bp', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<leader>q', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
