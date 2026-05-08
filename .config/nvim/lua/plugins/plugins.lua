return {
  { "nvim-mini/mini.nvim", version = "*" },
  {
    "xeluxee/competitest.nvim",
    dependencies = "muniftanjim/nui.nvim",
    cmd = { "CompetiTestReceive", "CompetiTestRun", "CompetiTestAdd" }, -- Lazy load on these commands
    opts = {
      -- Automatic Filename & Folder Structure
      -- This saves files as "ProblemName.cpp" instead of just "solution.cpp"
      received_files_extension = "py",
      received_problems_path = "$(CWD)/$(PROBLEM).$(FEXT)",
      received_problems_prompt_path = false, -- Don't ask where to save every time

      -- UI Settings
      runner_ui = {
        interface = "split",
        show_nu = true,
        width = 0.5,
      },
    },
    -- 4. Keybindings
    keys = {
      { "<leader>cr", "<cmd>CompetiTest receive problem<cr>", desc = "CP: Receive Problem" },
      { "<leader>cc", "<cmd>CompetiTest receive contest<cr>", desc = "CP: Receive Full Contest" },
      { "<leader>ct", "<cmd>CompetiTest run<cr>", desc = "CP: Run Tests" },
      { "<leader>ca", "<cmd>CompetiTest add_testcase<cr>", desc = "CP: Add Testcase" },
      { "<leader>ce", "<cmd>CompetiTest edit_testcase<cr>", desc = "CP: Edit Testcase" },
      { "<leader>ui", "<cmd>CompetiTest show_ui<cr>", desc = "CP: Show Last Result UI" },
    },
  },
}
