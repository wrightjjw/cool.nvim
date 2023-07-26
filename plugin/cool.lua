vim.api.nvim_create_user_command("CoolNolineyank", function(args)
    local start = args["line1"]
    local fin = args["line2"]
    require('cool').nolineyank(start, fin)
end)
