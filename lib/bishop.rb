class Bishop < ChessPiece

	def move? (potential_x, potential_y)
		if potential_x > @x && potential_y < @y 
			true
		elsif potential_x > @x && potential_y > @y
			true
		elsif potential_x < @x && potential_y > @y
			true
		elsif potential_x < @x && potential_y < @y
			true
		else
			false
		end
	end
end
