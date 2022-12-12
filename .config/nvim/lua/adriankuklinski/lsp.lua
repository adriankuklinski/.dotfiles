local lsp = require('lsp-zero')

lsp.ensure_installed({
    'html',
    'cssls',
    'tsserver',
    'intelephense',
    'rust_analyzer',
    'sumneko_lua',
    'gopls',
    'eslint'
})

lsp.set_preferences({
    suggest_lsp_servers = true,
    setup_servers_on_start = true,
    set_lsp_keymaps = true,
    configure_diagnostics = true,
    cmp_capabilities = true,
    manage_nvim_cmp = true,
    call_servers = 'local',
    sign_icons = {}
})

lsp.configure('tsserver', {
    filetypes = {
        'typescript',
        'typescriptreact',
        'typescript.tsx',
    }
})

lsp.setup()
