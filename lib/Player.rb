class Player

attr_reader :name

  def initialize
    print "Please enter your name: "
    @name = gets.chomp

    assign_marker
  end

  def assign_marker
    begin
      print "x or o? "
      @marker = gets.chomp

      validentry = @marker == 'x' || @marker == 'o'

      if !validentry
        puts "Invalid response.\n"
      end
    end while !validentry
  end

  def place_marker
    begin
      print  @name + ", what is your next move? Enter column: "
      row = Integer(gets.chomp)

      print @name + ", enter row: "
      column = Integer(gets.chomp)

      validentry = (row > 0 || row <= 3) && (column > 0 || column <= 3)

      if !validentry
        puts "Invalid entry."
      elsif $board[row - 1][column - 1] != 0
        puts "Invalid entry."
        validentry = false
      end
    end while !validentry

    $board[row - 1][column - 1] = $markertoboardhash[@marker]
  end
end
