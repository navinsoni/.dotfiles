jdtls_setup = function()
    local root_dir = require('jdtls.setup').find_root({'packageInfo'}, 'Config')
    local home = os.getenv('HOME')
    local eclipse_workspace = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(root_dir, ':p:h:t')

    local ws_folders_lsp = {}
    local ws_folders_jdtls = {}
    if root_dir then
        local file = io.open(root_dir .. "/.bemol/ws_root_folders", "r");
        if file then
            for line in file:lines() do
                table.insert(ws_folders_lsp, line);
                table.insert(ws_folders_jdtls, string.format("file://%s", line))
            end
            file:close()
        end
    end

    local config = {
        on_attach = on_attach,
        cmd = {'java-lsp.sh', eclipse_workspace},
        root_dir = root_dir,
        init_options = {
            workspaceFolders = ws_folders_jdtls,
        },
    }

    require('jdtls').start_or_attach(config)

    for _,line in ipairs(ws_folders_lsp) do
        vim.lsp.buf.add_workspace_folder(line)
    end
end
