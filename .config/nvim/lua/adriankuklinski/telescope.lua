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

local M = {}

M.search_dotfiles = function()
	require("telescope.builtin").find_files({
		prompt_title = "< VimRC >",
		cwd = vim.env.DOTFILES,
		hidden = true,
	})
end

M.git_branches = function()
	require("telescope.builtin").git_branches({
		attach_mappings = function(_, map)
			map("i", "<c-d>", actions.git_delete_branch)
			map("n", "<c-d>", actions.git_delete_branch)
			return true
		end,
	})
end

return M
