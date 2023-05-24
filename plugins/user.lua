return {
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

  {
    "navarasu/onedark.nvim",
    --as = "onedark",
    config = function()
      require("onedark").setup{
        style = "darker",
        transparent = true,
      }
    end,
  },
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
