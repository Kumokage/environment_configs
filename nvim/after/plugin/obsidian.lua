require("obsidian").setup({
    workspaces = {
        {
            name = "personal",
            path = "/Users/alexglushko/Library/Mobile Documents/iCloud~md~obsidian/Documents/Zettelkasten",
        }
    },
    daily_notes = {
        folder = "Journal",
        date_format = "%Y-%m-%d",
        -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
        template = "Daily note.md"
    },
    note_id_func = function(title)
        return title
    end,
    templates = {
        subdir = "Templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
        -- A map for custom variables, the key should be the variable and the value a function
        substitutions = {},
    },
    open_app_foreground = true,
})
