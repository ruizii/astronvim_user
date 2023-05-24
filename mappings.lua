-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    ["<C-b>"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    
    -- Neotree
    ["<leader>b"] = { name = "Buffers" },

    -- Terminal
    ["<C-t>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },

    -- Debug
    ["<F29>"] = { function() require("dap").continue() end, desc = "Debugger: Start" }, -- Ctrl+F5
    ["<F17>"] = { function() require("dap").terminate() end, desc = "Debugger: Stop" }, -- Shift+F5
    ["<F26>"] = { function() require("dap").restart_frame() end, desc = "Debugger: Restart" }, -- Control+F2
    ["<F2>"] = { function() require("dap").toggle_breakpoint() end, desc = "Debugger: Toggle Breakpoint" },
    ["<F8>"] = { function() require("dap").step_over() end, desc = "Debugger: Step Over" },
    ["<F7>"] = { function() require("dap").step_into() end, desc = "Debugger: Step Into" },
    
    -- quick save
    ["<C-s>"] = { ":w<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    ["<C-t>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "ToggleTerm horizontal split" },
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
