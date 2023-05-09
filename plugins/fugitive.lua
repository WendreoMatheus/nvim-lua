local fugitive_status, fugitive = pcall(require, "fugitive")
if not fugitive_status then
	return
end

fugitive.setup()
