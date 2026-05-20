require("notify").setup({
  stages = "slide",
  timeout = 3000,
  top_down = true,
})

-- require("noice").setup({
--   notify = {
--     enabled = true,
--     view = "notify",
--   },
--   routes = {
--     {
--       filter = {
--         event = "msg_show",
--       },
--       opts = {
--         skip = true,
--       },
--     },
--   },
-- })
