return {
	cmd = { "clangd", "--background-index", "--clang-tidy" },
	filetypes = { "c", "h", "cpp", "hpp", "cxx", "hxx" },
	root_markets = {
		"compile_commands.json",
		".git",
	},
}
