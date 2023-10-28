local dap = require("dap")

require("dapui").setup()
require("nvim-dap-virtual-text").setup()

-- go
dap.adapters.go = {
    type = 'executable';
    command = 'node';
    args = {vim.fn.stdpath("data") .. '/mason/packages/go-debug-adapter/extension/dist/debugAdapter.js'};
}

dap.configurations.go = {
    {
        type = 'go';
        name = 'Debug';
        request = 'launch';
        showLog = false;
        program = "${file}";
        dlvToolPath = vim.fn.exepath(vim.fn.stdpath("data") .. '/mason/packages/delve/dlv')
    },
}

-- php
dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = {vim.fn.stdpath("data") .. '/mason/packages/php-debug-adapter/extension/out/phpDebug.js'}
}

dap.configurations.php = {
    {
        type = 'php',
        request = 'launch',
        name = 'Listen for Xdebug',
        port = 9003
    }
}

vim.keymap.set("n", "<f5>", ":lua require'dap'.continue();<Cr>");
vim.keymap.set("n", "<f10>", ":lua require'dap'.step_over();<Cr>");
vim.keymap.set("n", "<f11>", ":lua require'dap'.step_into();<Cr>");
vim.keymap.set("n", "<f12>", ":lua require'dap'.step_out();<Cr>");
vim.keymap.set("n", "<leader>td", ":lua require'dap'.debug_test();<Cr>");
vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint();<Cr>");
vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '));<Cr>");

