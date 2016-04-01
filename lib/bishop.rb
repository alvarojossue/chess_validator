class Bishop < ChessPiece

	def move? (potential_x, potential_y)
		if (potential_y - @y).abs == (potential_x - @x).abs 
			true
		else
			false
		end
	end
end
