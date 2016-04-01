class King < ChessPiece

	def move? (potential_x, potential_y)
		if potential_x == @x && ((potential_y - @y ==  1) || (potential_y - @y == -1))
			true
		elsif potential_y == @y && ((potential_x - @x == 1) || (potential_x - @x == -1))
			true
		elsif (potential_x == (@x + 1) && potential_y == (@y + 1)) || (potential_x == (@x - 1) && potential_y == (@y + 1))
			true
		elsif (potential_x == (@x + 1) && potential_y == (@y -1)) || (potential_x == (@x - 1) && potential_y == (@y -1))
			true
		else
			false
		end
	end
end
