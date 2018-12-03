local component = require("component")
local computer = require("computer")
local GUI = require("GUI")
local MineOSInterface = require("MineOSInterface") 
local MOC = require("MineOSCore")

local currentScriptDirectory = MOC.getCurrentScriptDirectory() 
local localization = MOC.getLocalization(currentScriptDirectory .. "Localization/") 


-- окно
local mainContainer, window = MineOSInterface.addWindow(GUI.titledWindow(50, 30, 70, 27, "Info", true))
window:addChild(GUI.label(25, 2, window.width, window.height, 0x5A5A5A, localization.info))




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
