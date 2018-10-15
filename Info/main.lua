local component = require("component")
local computer = require("computer")
local GUI = require("GUI")
local MineOSInterface = require("MineOSInterface")
local srl = require("serialization") 

local Author = ("Fronun, MineCR")

local version = "1.01"

-- окно
local mainContainer, window = MineOSInterface.addWindow(GUI.titledWindow(50, 30, 70, 27, "Info", true))
window.backgroundPanel.colors.transparency = 0.2
window:addChild(GUI.label(27, 25, window.width, window.height, 0x5A5A5A, "Version: "..version))
window:addChild(GUI.label(3, 27, window.width, window.height, 0x5A5A5A, Author)) 
window:addChild(GUI.label(25, 2, window.width, window.height, 0x5A5A5A, "Information about the computer:"))




listCom = ""
posYcom = 4
for indexAddr, listCom in component.list() do 

--listCom = listCom..name.."\n"
window:addChild(GUI.label(5, posYcom, window.width, window.height, 0x5A5A5A, listCom))
window:addChild(GUI.label(26, posYcom, window.width, window.height, 0x5A5A5A, indexAddr))
posYcom = posYcom+1
end
--print (listCom)
window:addChild(GUI.label(5, 4, window.width, window.height, 0x5A5A5A, listCom ))
--window:addChild(GUI.label(5, 5, window.width, window.height, 0x5A5A5A,  ))
