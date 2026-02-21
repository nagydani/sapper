require("config")
require("constants")
require("variables")
require("functions")

--- *** event handlers and initialization ***

function love.singleclick(x, y)
  if game_ready() then
    actionNextMode()
  elseif game_started() then
    actionUser(actionFlag, x, y)
  end
end

function love.doubleclick(x, y)
  if game_over() then
    actionInit()
  else
    actionUser(actionUnlock, x, y)
  end
end

initialize()
