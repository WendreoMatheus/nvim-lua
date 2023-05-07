local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup({
  highligh = {
    enable = true
  },
  indent = { enable = true }, 
  autotag = { enable = true },
  ensure_sintalled = {
    "json", 
    "javascript", 
    "typescript", 
    "tsx", 
    "yaml", 
    "css", 
    "scss", 
    "markdown", 
    "graphql", 
    "lua", 
    "vim", 
    "dockerfile", 
    "gitignore", 
    "sql",
    "ruby",
  },
  auto_install = true
})
