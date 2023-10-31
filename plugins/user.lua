return {
  {
    "CRAG666/code_runner.nvim",
    lazy = false,
    config = function()
      require("code_runner").setup {
        mode = "toggleterm",
        startinsert = true,

        term = {
          size = 15,
        },

        filetype = {
          python = "python -u",
          javascript = "node",
          cpp = "cd $dir && g++ -g -Wall -Wextra $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
          c = "cd $dir && gcc -g -Wall -Wextra $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
          go = "go run",
          sh = "bash",
          asm = "nasm -f elf64 $fileName && ld $fileNameWithoutExt.o -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          lua = "lua",
        },
      }
    end,
  },

  {
    "iruzo/matrix-nvim",
    lazy = false,
    config = function()
      vim.g.matrix_disable_background = true,
      require("matrix").set()
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
      require("notify").setup {
        stages = "fade_in_slide_out",
        background_colour = "FloatShadow",
        timeout = 3000,
      }
      vim.notify = require "notify"
    end,
  },
}
