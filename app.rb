require_relative "lib/chess_piece.rb"
require_relative "lib/rook.rb"
require_relative "lib/king.rb"
require_relative "lib/bishop.rb"
require_relative "lib/knight.rb"
require_relative "lib/queen.rb"



br_left = Rook.new(1, 8, "black")
br_right = Rook.new(1, 8, "black")
wr_left = Rook.new(1, 1, "white")
wr_right = Rook.new(8, 1, "white")

white_king = King.new(5, 1, "white")
black_king = King.new(5, 8, "black")

white_bishop_right = Bishop.new(4, 3, "white")
white_bishop_left = Bishop.new(5, 4, "white")
black_bishop_right = Bishop.new(6, 7, "black")
black_bishop_left = Bishop.new(4, 7, "black")

white_knight_right = Knight.new(7, 1, "white")
white_knight_left = Knight.new(2, 1, "white")
black_knight_right = Knight.new(7, 8, "black")
black_knight_left = Knight.new(2, 8, "black")

white_queen = Queen.new(4, 1, "white")
black_queen = Queen.new(4, 8, "white")



# Rook tests



puts "\nRook tests:"
puts "-------------"
puts "These should be true:"

# Moving vertically down
puts br_left.move?(1, 4)

# Moving horizontally right
puts br_left.move?(6,8)

puts ""

puts "These should be false:"

puts wr_left.move?(2,2)
puts wr_right.move?(7,2)



# King tests



puts "\nKing tests:"
puts "-------------"
puts "These should be true:"

# Moving the white king vertically to the front (up)
puts white_king.move?(5, 2)

# Moving the black king vertically to the front (down)
puts black_king.move?(5, 7)

# Moving the white king horizontally to the right
puts white_king.move?(6, 1)

# Moving the black king horizontally to the right (our left)
puts black_king.move?(4, 8)

#Moving the white king one step diagonally to the front right
puts white_king.move?(6, 2)

#Moving the white king one step diagonally to the front (left)
puts white_king.move?(4, 2)

#Moving the black king one step diagonally to the front-right (down-left)
puts black_king.move?(4, 7)

#Moving the black king one step diagonally to the front-left (down-right)
puts black_king.move?(6, 7)

puts ""


puts "These should be false:"

puts white_king.move?(6,3)
puts black_king.move?(6,6)



#Bishop tests

puts "\nBishop tests:"
puts "-------------"
puts "These should be true:"


puts white_bishop_right.move?(6, 5)

puts white_bishop_left.move?(7, 2)

puts black_bishop_right.move?(7, 8)

puts black_bishop_left.move?(5, 8)

puts ""


puts "These should be false:"

puts white_bishop_right.move?(2, 2)

puts white_bishop_left.move?(7, 5)

puts black_bishop_right.move?(6, 6)

puts black_bishop_left.move?(8, 2)


#Knight tests

puts "\nKnight tests:"
puts "-------------"
puts "These should be true:"

puts white_knight_right.move?(6, 3)
puts white_knight_left.move?(3, 3)
puts black_knight_right.move?(8, 6)
puts black_knight_left.move?(1, 6)

puts ""

puts "These should be false:"

puts white_knight_right.move?(5, 3)
puts white_knight_left.move?(4, 3)
puts black_knight_right.move?(6, 5)
puts black_knight_left.move?(2, 5)

#Queen tests

puts "\nQueen tests:"
puts "-------------"
puts "These should be true:"

puts white_queen.move?(8, 5)
puts black_queen.move?(4, 3)