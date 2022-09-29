local action_state = require('telescope.actions.state')
local actions = require('telescope.actions')

require('telescope').setup{
    defaults = {
        prompt_prefix = "$ ",
        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
                ["<C-a>"] = function() print(vim.inspect(action_state.get_selected_entry())) end
            }
        }
    }
}

require('telescope').load_extension('fzf')
