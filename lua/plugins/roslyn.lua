return {
  "seblyng/roslyn.nvim",
  ---@module 'roslyn.config'
  ---@type RoslynNvimConfig
  ---
  config = function()
    vim.lsp.config("roslyn", {
      on_attach = function()
        print("This will run when the server attaches!")
      end,
      settings = {
        ["csharp|background_analysis"] = {
          dotnet_analyzer_diagnostics_scope = "openFiles",
          dotnet_compiler_diagnostics_scope = "openFiles",
        },
        ["csharp|inlay_hints"] = {
          csharp_enable_inlay_hints_for_implicit_object_creation = true,
          csharp_enable_inlay_hints_for_implicit_variable_types = true,
        },
        ["csharp|code_lens"] = {
          dotnet_enable_references_code_lens = true,
        },
      },
    })

    require("roslyn").setup({
      filewatching = "off",
    })
  end
}
