local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highligh = {
		enable = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ensure_sintalled = {
		"json",
		"javascript",
		"python",
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
	},
	auto_install = true,
})
