local utils = require('telescope.utils')
local builtin = require('telescope.builtin')
keymap = vim.keymap.set

-- Telescope bindings
function _find_files()
    local _, ret, _ = utils.get_os_command_output({ 'git', 'rev-parse', '--is-inside-work-tree' })
    -- local is_git = os.execute("git status &>/dev/null")
    if (ret == 0) then
        vim.cmd(":Telescope git_files")
    else
        vim.cmd(":Telescope find_files")
    end
end

keymap('n', '<Leader>f', _find_files)
keymap('n', '<Leader>o', '<cmd> Telescope oldfiles <cr>')
keymap('n', '<Leader>s', '<cmd> Telescope live_grep <cr>')
keymap('n', '<Leader>b', '<cmd> Telescope buffers <cr>')
