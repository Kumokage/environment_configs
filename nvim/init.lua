require("kumokage")

if string.find(string.lower(vim.loop.os_uname().release), "wsl") then
    vim.cmd('colorscheme bamboo')
else
    vim.cmd('colorscheme rose-pine')
end

