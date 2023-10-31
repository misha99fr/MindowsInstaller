local GUI = require("GUI")
local system = require("System")

local workspace, window, menu = system.addWindow(GUI.filledWindow(1, 1, 50, 16, 0x180153))

local layout = window:addChild(GUI.layout(1, 1, window.width, window.height, 1, 1))

local label = layout:addChild(GUI.label(1, 1, 25, 1, 0xFFFFFFFF, "Mindows Setup"))

local button1 = layout:addChild(GUI.button(1, 1, 11, 1, 0x4B4B4B, 0xFFFFFF, 0x0, 0xFFFFFF, "Install"))
button1.onTouch = function()
  window:remove()
  GUI.alert("To start setup, press OK")
  GUI.alert("Enter product key here(Press ok to show dialog)")
end

local button2 = layout:addChild(GUI.button(1, 1, 8, 1, 0x4B4B4B, 0xFFFFFF, 0x0, 0xFFFFFF, "Help"))
button2.onTouch = function()
  window:remove()
  GUI.alert("Requirments: MineOS-PC, all tier3-Components, ability to think, ability to install GBSoftware Products. Product Key: OTIGF-XSFHGD-FGFGH")
end

local button3 = layout:addChild(GUI.button(1, 1, 8, 1, 0x4B4B4B, 0xFFFFFF, 0x0, 0xFFFFFF, "Exit"))
button3.onTouch = function()
  window:remove()
  GUI.alert("OH, ok")
end

workspace:draw()
