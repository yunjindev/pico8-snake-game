grid_size = 4
frame_count = 5
move_interval =30
function _init()
	snake = {}
	snake.x = 2
	snake.y = 3
	snake.dx = 1
    snake.dy = 0
	snake.draw=function(self)
        rectfill(snake.x*grid_size, snake.y*grid_size, (snake.x+1)*grid_size, (snake.y+1)*grid_size, 3)
    end
    snake.update= function(self)
        snake.x+= snake.dx
        snake.y+= snake.dy
    end
end

function _update()
    if frame_count - move_interval == 0 then
        snake:update()
    end
    if btn(0) then  -- left
        snake.dx = -1
        snake.dy = 0
    elseif btn(1) then  -- right
        snake.dx = 1
        snake.dy = 0
    elseif btn(2) then  -- up
        snake.dx = 0
        snake.dy = -1
    elseif btn(3) then  -- down
        snake.dx = 0
        snake.dy = 1
    end

    snake:update()
end

function _draw()
    cls()
    snake:draw()
end

function spawn_apple()