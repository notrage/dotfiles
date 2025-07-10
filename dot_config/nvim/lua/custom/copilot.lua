CP = {}

function CP.toggle()
    local output = vim.api.nvim_exec("Copilot status", true)
    if output:match("Copilot: Ready") then
        vim.cmd("Copilot disable")
        print("Copilot disabled")
    else
        vim.cmd("Copilot enable")
        print("Copilot enabled")
    end
end

return CP
