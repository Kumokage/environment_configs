require("kumokage.remap")
require("kumokage.set")

vim.g.python3_host_prog = '/usr/bin/python3'
vim.g.loaded_perl_provider = 0
vim.g.magma_image_provider = "kitty"
vim.g.jupytext_fmt = 'py'
vim.g.jupytext_style = 'hydrogen'
if string.find(string.lower(vim.loop.os_uname().release), "wsl") then
    vim.g.clipboard = {
        name = 'WslClipboard',
        copy = {
            ['+'] = 'clip.exe',
            ['*'] = 'clip.exe',
        },
        paste = {
            ['+'] = 'powershell.exe -c [Console]::Out.write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
            ['*'] = 'powershell.exe -c [Console]::Out.write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        },
        cache_enable = 0,
    }
end

