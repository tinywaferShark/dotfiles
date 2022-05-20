local cmp = require("cmp")
local cmp_mapping = {
  prev_item = "<S-TAB>",
  next_item = "<TAB>",
  confirm = "<cr>",
  --next_item_or_confirm = "<tab>",
  prev_5_item = "<c-u>",
  next_5_item = "<c-d>",
  toggle_complete = "<c-k>",
  prev_scroll = "<c-b>",
  next_scroll = "<c-f>"
}

lvim.builtin.cmp.mapping = {
  [cmp_mapping.confirm] = cmp.mapping(cmp.mapping.confirm(), { "i", "s", "c" }),
  [cmp_mapping.prev_item] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s", "c" }),
  [cmp_mapping.next_item] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s", "c" }),
  [cmp_mapping.prev_scroll] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "s", "c" }),
  [cmp_mapping.next_scroll] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "s", "c" }),
  [cmp_mapping.prev_5_item] = cmp.mapping(
    function(fallback)
      if cmp.visible() then
        ---@diagnostic disable-next-line: unused-local
        for i = 1, 5, 1 do
          cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
        end
      else
        fallback()
      end
    end,
    { "i", "s", "c" }
  ),
  [cmp_mapping.next_5_item] = cmp.mapping(
    function(fallback)
      if cmp.visible() then
        ---@diagnostic disable-next-line: unused-local
        for i = 1, 5, 1 do
          cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
        end
      else
        fallback()
      end
    end,
    { "i", "s", "c" }
  ),
  [cmp_mapping.toggle_complete] = cmp.mapping(
    function()
      if cmp.visible() then
        cmp.abort()
      else
        cmp.complete()
      end
    end,
    { "i", "s", "c" }
  )
}
lvim.builtin.cmp.window = {
  completion = cmp.config.window.bordered(
    {
    winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None"
  }
  ),
  documentation = cmp.config.window.bordered(
    {
    winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None"
  }
  )
}


cmp.setup.cmdline(
  "/",
  {
  sources = {
    { name = "buffer" }
  }
}
)

cmp.setup.cmdline(
  "?",
  {
  sources = {
    { name = "buffer" }
  }
}
)

cmp.setup.cmdline(
  ":",
  {
  sources = cmp.config.sources(
    {
      { name = "path" }
    },
    {
    { name = "cmdline" }
  }
  )
}
)
