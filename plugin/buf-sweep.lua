vim.api.nvim_create_user_command("BufSweep", function(args)
  local buf_sweep = require("buf-sweep")
  if args.bang then
    buf_sweep.sweep({ force = true })
  else
    buf_sweep.sweep({ force = false })
  end
end, { bang = true })
