require 'require_all'

require_all 'lib'

board = Board.new
playerone = Player.new
playertwo = Player.new
board.PrintBoard

for i in 1..9
  if i % 2 == 1
    playerone.place_marker
    board.PrintBoard
  else
    playertwo.place_marker
    board.PrintBoard
  end

  if board.EndGame
    break
  elsif i == 9
    puts "Cat's game!"
#    puts playerone.name " and " playertwo.name ", you should play again."
  end
end
