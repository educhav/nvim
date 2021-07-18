CONFIG_PATH = vim.fn.stdpath "config"

vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_section = {
      a = {
        description = { "  Load Last Session  " },
        command = "SessionLoad",
      },
      b = {
        description = { "  Recently Used Files" },
        command = "Telescope oldfiles",
      },
      c = {
        description = { "  Find File          " },
        command = "Telescope find_files",
      },
      d = {
        description = { "  Find Word          " },
        command = "Telescope live_grep",
      },
      e = {
        description = { "  Settings           " },
        command = ":e " .. CONFIG_PATH .. "/lua/plugins.lua",
      }
}
vim.g.dashboard_custom_footer = {""}
vim.g.dashboard_custom_header = {
    '',
    '',
    '',
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}
