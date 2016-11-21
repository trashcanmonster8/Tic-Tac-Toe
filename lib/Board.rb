class Board

#initialize the class by creating the board
  def initialize()
    $board = [[ 0, 0, 0 ], [ 0, 0, 0 ], [ 0, 0, 0 ]]

    @boardtomarkerhash = {
      -1 => ' o',
      1 => ' x',
      0 => ' _'
    }

    $markertoboardhash = {
      'x' => 1,
      'o' => -1
    }

    system('cls')
    puts "Welcome to Tic-Tac-Toe!"
  end

  def EndGame()

#Check rows
    for i in 0..2
      gameover = false
      sum = 0

      for j in 0..2
        sum += $board[i][j]
      end

      if sum == -3
        puts "o wins!"
        gameover = true
        break
      end

      if sum == 3
        puts "x wins!"
        gameover = true
        break
      end
    end

#Check columns
    for j in 0..2

      sum = 0

      for i in 0..2
        sum += $board[i][j]
      end

      if sum == -3
        puts "o wins!"
        gameover = true
        break
      end

      if sum == 3
        puts "x win!"
        gameover = true
        break
      end
    end

#Check diagonal
    sum = 0

    for i in 0..2
      sum += $board[i][i]
    end

    if sum == -3
      puts "o wins!"
      gameover = true
    end

    if sum == 3
      puts "x win!"
      gameover = true
    end

#Check other diagonal
    sum = 0

    for i in 0..2
      sum += $board[2-i][i]
    end

    if sum == -3
      puts "o wins!"
      gameover = true
    end

    if sum == 3
      puts "x win!"
      gameover = true
    end

    return gameover
  end

  def PrintBoard
    system('cls')

    puts "  1 2 3"

    for i in 0..2
      print i + 1
      for j in 0..2
        print @boardtomarkerhash[$board[j][i]]
      end
      puts ""
    end
  end
end
