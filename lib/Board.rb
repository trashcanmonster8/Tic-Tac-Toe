class Board

attr_reader :board
attr_reader :desplay
attr_reader :markerhash

#initialize the class by creating the board
  def initialize()
    @board = [[ 0, 0, 0 ], [ 0, 0, 0 ], [ 0, 0, 0 ]]

    @markerhash = {
      'x' => 1,
      'o' => -1,
    }
  end

  def PlaceMarker(x, y, symbol)

    if @board[y][x] != 0
      @board[y],[x] = @markerhash[symbol]
    else
      puts "Invalid placement"  #TODO
      PlaceMarker()
    end

  end

  def EndGame()
    board = @board

#Check rows
    for i in 0..2

      sum = 0

      for j in 0..2
        sum += board[i][j]
      end

      if sum = -3
        puts "O wins!"
        return True
        break
      end

      if sum = 3
        puts "X wins!"
        return True
        break
      end
    end

#Check columns
    for j in 0..2

      sum = 0

      for i in 0..2
        sum += board[i][j]
      end

      if sum = -3
        puts "Computer wins!"
        return True
        break
      end

      if sum = 3
        puts "You win!"
        return True
        break
      end
    end

#Check diagonal
    sum = 0

    for i in 0..2
      sum += board[i][i]
    end

    if sum = -3
      puts "Computer wins!"
      return True
    end

    if sum = 3
      puts "You win!"
      return True
    end

#Check other diagonal
    sum = 0

    for i in 0..2
      sum[2-i][i]
    end

    if sum = -3
      puts "Computer wins!"
      return True
    end

    if sum = 3
      puts "You win!"
      return True
    end

#If all if-statements pass return false to continue the game
    return false
  end
end
