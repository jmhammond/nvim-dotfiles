return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      trigger = {
        show_on_keyword = false,
      },
      accept = {
        auto_brackets = {
          enabled = true,
        },
      },
      menu = {
        auto_show = false,
        auto_show_delay_ms = 500,
        draw = {
          treesitter = { "lsp" },
        },
      },
      documentation = {
        auto_show = false,
        auto_show_delay_ms = 500,
      },
      ghost_text = {
        enabled = vim.g.ai_cmp,
      },
    },
    sources = { -- https://main.cmp.saghen.dev/recipes.html#for-writers
      providers = {
        buffer = {
          -- keep case of first char
          transform_items = function(a, items)
            local keyword = a.get_keyword()
            local correct, case
            if keyword:match("^%l") then
              correct = "^%u%l+$"
              case = string.lower
            elseif keyword:match("^%u") then
              correct = "^%l+$"
              case = string.upper
            else
              return items
            end

            -- avoid duplicates from the corrections
            local seen = {}
            local out = {}
            for _, item in ipairs(items) do
              local raw = item.insertText
              if raw:match(correct) then
                local text = case(raw:sub(1, 1)) .. raw:sub(2)
                item.insertText = text
                item.label = text
              end
              if not seen[item.insertText] then
                seen[item.insertText] = true
                table.insert(out, item)
              end
            end
            return out
          end,
        },
      },
    },
  },
}
