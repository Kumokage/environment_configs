if string.find(string.lower(vim.loop.os_uname().release), "wsl") then
    require('bamboo').setup({
        disable_background = true,
        transparent = true
    })
else
    require('rose-pine').setup({
        disable_background = true,
        styles = {
            transparency = true,
        },
    })
end

function ColorMyPencils(color)

    if string.find(string.lower(vim.loop.os_uname().release), "wsl") then
        color = color or "bamboo"
    else
        color = color or "rose-pine"
    end
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
end

ColorMyPencils()
