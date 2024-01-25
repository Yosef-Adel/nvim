return {
    'rcarriga/nvim-notify',
    config = function()
        require('notify').setup({
            stages = 'fade_in_slide_out',
            background_colour = "#000000",
            timeout = 5000,
            icons = {
                ERROR = '',
                WARN = '',
                INFO = '',
                DEBUG = '',
                TRACE = '✎',
            },
        })
    end,
}