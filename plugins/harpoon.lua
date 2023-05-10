local harpoon_status, harpoon = pcall(require, "harpoon")
if not harpoon_status then
	return
end

harpoon.setup()
