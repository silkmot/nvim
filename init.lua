vim.loader.enable()

local tree = {
    'options',
		'mappings',
		'commands', 
		'bootstrap' -- Modules support using lazy.nvim
}

for _, file in ipairs(tree) do
    pcall(require, 'config.' .. file)
end