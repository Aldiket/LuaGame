
function move( obj, x, y )
	obj.x = obj.x + x
	obj.y = obj.y + y
end

function love.load()
	Player = {x = 100, y = 150, speed = 50}
	BlueBall = love.graphics.newImage("BlueBall.png");
end

function love.update( dt )
	ReadInput(dt)
end

function love.draw()
	--love.graphics.print("Hello World!", 50, 50)
	love.graphics.draw(BlueBall, Player.x, Player.y)
end

function ReadInput( dt )
   if love.keyboard.isDown("a") then
      Player.x = Player.x - Player.speed * dt
   end
   if love.keyboard.isDown("d") then
      Player.x = Player.x + Player.speed * dt
   end
 
   if love.keyboard.isDown("w") then
      Player.y = Player.y - Player.speed * dt
   end
   if love.keyboard.isDown("s") then
      Player.y = Player.y + Player.speed * dt
   end
end
