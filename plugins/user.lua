return {

  {
    "CRAG666/code_runner.nvim",
    lazy = false,
    config = function()
      require("code_runner").setup({
        startinsert = true,

        term = {
          size = 15,
        },

        filetype = {
          python = "python -u",
          javascript = "node",
          cpp = "cd $dir && g++ -Wall -Wextra $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
          c = "cd $dir && gcc -Wall -Wextra $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
          go = "go run $fileName",
          sh = "bash $fileName",
          asm = "nasm -f elf64 $fileName && ld $fileNameWithoutExt.o -o $fileNameWithoutExt && ./$fileNameWithoutExt",
        },
      })
    end,
  },

  {
    "navarasu/onedark.nvim",
    lazy = false,
    config = function()
      require("onedark").setup {
        style = "darker",
        transparent = true,
      }
    end,
  },

  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        background_colour = "#999999",
      })
    end,
  },
  {
    -- override nvim-cmp plugin
    "hrsh7th/nvim-cmp",
    -- override the options table that is used in the `require("cmp").setup()` call
    opts = function(_, opts)
      -- opts parameter is the default options table
      -- the function is lazy loaded so cmp is able to be required
      local cmp = require "cmp"
      -- modify the mapping part of the table


      opts.mapping["<Tab>"] = cmp.mapping.confirm {
        select = false,
      }
      opts.mapping["<Down>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select })
      opts.mapping["<Up>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })

      -- opts.mapping["<Up>"] = cmp.mapping.select_prev_item(),

      -- return the new table to be used
      return opts
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup {
        window = {
          width = 28,
        },
      }
    end,
  }

  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
