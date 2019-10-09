require_relative 'board'

Class Battleship

  def initialize
    # set up the board
    @board = Board.new
  end

  def welcome
    puts "Welcome to BATTLESHIP"
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    print ">"
    command = gets.chomp.to_s

    if ["p", "play"].include?(command)
      p "Coucou biz"
    elsif ["i", "instructions"].include?(command)
      p "Tu vas te taper de la lecture"
    elsif ["q", "quit"].include?(command)
      p "tchuss"
    end
  end

  def perform
    welcome
    p @board
  end
end
end
Battleship.new.perform
