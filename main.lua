display.setDefault( "background", 1/255, 150/255, 26/255 )

ageFieldTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 65, 225, 40 )
ageFieldTextField.id = "Age textField"

local image = display.newImageRect( "Assets/museum.png", 130, 130 )
image.x = 160
image.y = 60

responseText = display.newText( "Do you get a discount?", 160, 150, native.systemFont, 20 )
responseText:setFillColor( 255/255, 255/255, 255/255 )

dayField = native.newTextField( display.contentCenterX, display.contentCenterY + 160, 225, 40 )
dayField.id = "Day textField"

whatDay = display.newText( "Type your age here:", 160, 265, native.systemFont, 15 )
whatDay:setFillColor( 255/255, 255/255, 255/255 )

whatAge = display.newText( "Type what day it is here:", 160, 350, native.systemFont, 15 )
whatAge:setFillColor( 255/255, 255/255, 255/255 )

local calculateButton = display.newImageRect( "Assets/enterbutton.png", 100, 100 )
calculateButton.x = 160
calculateButton.y = 210
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )

local ageAnswer = tonumber(ageFieldTextField.text)
local dayAnswer = dayField.text

if (ageAnswer >= 12 and ageAnswer <= 21) or (dayAnswer == "tuesday" or dayAnswer == "thursday") then
	responseText.text = "You pay student discount"
else
	responseText.text = "You pay normal price"
end
end

calculateButton:addEventListener( "touch", calculateButtonTouch )