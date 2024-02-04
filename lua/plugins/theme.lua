function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd("colorscheme " .. color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end

local function editViewAfterLazyInstall()
    vim.api.nvim_create_augroup("LazyComplete", { clear = true })
    vim.api.nvim_create_autocmd("User", {
        group = "LazyComplete",
        pattern = { "LazyDone", "LazyInstallPre", "LazyUpdatePre", "LazySyncPre" },

        callback = function()
            ColorMyPencils()
        end,
    })
    vim.api.nvim_create_autocmd("FileType", {
        pattern = "lazy", -- Assuming 'lazy' is the filetype of the lazy.nvim floating window
        callback = function()
            -- local current_win = vim.api.nvim_get_current_win()
            -- vim.api.nvim_win_set_option(current_win, 'winblend', 20) -- Set the desired blending level
        end,
    })
end

return {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
        vim.cmd('colorscheme rose-pine')
        ColorMyPencils()
        editViewAfterLazyInstall()
    end


}
