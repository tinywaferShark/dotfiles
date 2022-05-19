-- keymappings [view all the defaults by pressing <leader>Lk] lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

--取消luanarvim的默认映射
vim.cmd("unmap <S-h>")
vim.cmd("unmap <S-l>")
vim.cmd("iunmap jj")
vim.cmd("iunmap kj")
vim.cmd("iunmap jk")


--添加的内容
vim.api.nvim_set_keymap('n', 'j', '<Plug>(accelerated_jk_gj)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', '<Plug>(accelerated_jk_gk)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gt', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gT', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
-- lvim.keys.normal_mode["gt"] = "BufferLineCycleNext"
-- lvim.keys.normal_mode["gT"] = "BufferLineCyclePrev"
