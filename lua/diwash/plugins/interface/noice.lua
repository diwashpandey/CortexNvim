return {
  "folke/noice.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
    },
    messages = {
      enabled = true,
      view = "mini",
    },
    notify = {
      enabled = true,
    },
    routes = {
      { filter = { event = "msg_show", find = "written" }, opts = { skip = true } },
      { filter = { event = "msg_show", kind = "error" }, opts = { view = "notify" } },
      { filter = { event = "msg_show", kind = "warn" }, opts = { view = "notify" } },
    },
  }
}
