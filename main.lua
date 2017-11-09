
--[[
This code is to demonstrate how to use the scene manager in the Gideros engine
The "scenemanager.lua" is required


by: Michael Binder Nov-2017
]]


-- Create a new scene manager
sceneManager = SceneManager.new({
	["scene1"] = Scene1,
	["scene2"] = Scene2,
})
-- adding it to the stage
stage:addChild(sceneManager)

-- setting the transition between scenes
transition = SceneManager.fade

-- setting the duration of the transition between scenes
duration = 1

-- setting scenes table
scenes = {"scene1", "scene2"}


-- adding buttons to the stage (this is not necassary for the scene manager,
-- just so that we can switch scenes)
-- this requires button.lua
local btnNext = Button.new(Bitmap.new(Texture.new("gfx/btnNext.png")), Bitmap.new(Texture.new("gfx/btnNext_down.png")))
btnNext:setPosition(200, 100)
stage:addChild(btnNext)

local btnPrev = Button.new(Bitmap.new(Texture.new("gfx/btnPrev.png")), Bitmap.new(Texture.new("gfx/btnPrev_down.png")))
btnPrev:setPosition(20, 100)
stage:addChild(btnPrev)

-- adding an event to the button so it changes scenes when we click on it
btnNext:addEventListener("click", 
	function()	
		sceneManager:changeScene(scenes[2], duration, transition) 
	end)

btnPrev:addEventListener("click", 
	function()	
		sceneManager:changeScene(scenes[1], duration, transition) 
	end)


-- set the first scene to go to
sceneManager:changeScene(scenes[1], duration, transition)
	
	
	
	