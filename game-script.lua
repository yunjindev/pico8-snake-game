grid_size = 8
function _init()
	snake = {}
	snake.x = 2
	snake.y = 3
	snake.dx = 1
	snake.draw=function(self)
        rectfill(snake.x*grid_size, snake.y*grid_size, (snake.x+1)*grid_size, (snake.y+1)*grid_size, 7)
    end
end

function _update()

end

function _draw()
    cls()
    snake:draw()
end