return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")
    dashboard.section.header.val = {
      [[_____  ___    _______    ______  ___      ___  __     ___      ___ ]],
      [[(\"   \|"  \  /"     "|  /    " \|"  \    /"  ||" \   |"  \    /"  |]],
      [[|.\\   \    |(: ______) // ____  \\   \  //  / ||  |   \   \  //   |]],
      [[|: \.   \\  | \/    |  /  /    ) :)\\  \/. ./  |:  |   /\\  \/.    |]],
      [[|.  \    \. | // ___)_(: (____/ //  \.    //   |.  |  |: \.        |]],
      [[|    \    \ |(:      "|\        /    \\   /    /\  |\ |.  \    /:  |]],
      [[ \___|\____\) \_______) \"_____/      \__/    (__\_|_)|___|\__/|___|]],
      [[                                                                    ]],
    }
    alpha.setup(dashboard.opts)
  end,
}
