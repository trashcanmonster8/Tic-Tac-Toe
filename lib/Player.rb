class Player

attr_writer @name
attr_reader @marker

  def initialize
    prints "Please enter your name: "

    @name = gets.chomp
  end

  def turn
  end

  def assign_marker
    begin
      prints "x or o? "
      @marker = gets.chomp

      if @marker != 'x' || @marker != 'o'
        puts "Invalid response.\n"
      end    
    end while @marker != 'x' || @marker != 'o'

  end

end
