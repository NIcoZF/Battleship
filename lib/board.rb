# frozen_string_literal: true
$LOAD_PATH.unshift File.expand_path(__dir__)

require 'board_case'

class Board

  attr_accessor :board

  def initialize

    @a1 = BoardCase.new('A1')
    @a2 = BoardCase.new('A2')
    @a3 = BoardCase.new('A3')
    @b1 = BoardCase.new('B1')
    @b2 = BoardCase.new('B2')
    @b3 = BoardCase.new('B3')
    @c1 = BoardCase.new('C1')
    @c2 = BoardCase.new('C2')
    @c3 = BoardCase.new('C3')

    @board = [[@a1, @a2, @a3], [@b1, @b2, @b3], [@c1, @c2, @c3]]
 
  end

  def render
    puts "\n    1     2     3"
    puts "A   #{@board[0][0].value.to_s}  |  #{@board[0][1].value.to_s}  |  #{@board[0][2].value.to_s} "
    puts "   ----------------"
    puts "B   #{@board[1][0].value.to_s}  |  #{@board[1][1].value.to_s}  |  #{@board[1][2].value.to_s} "
    puts "   ----------------"
    puts "C   #{@board[2][0].value.to_s}  |  #{@board[2][1].value.to_s}  |  #{@board[2][2].value.to_s} "
    
  end

  def set_the_fleet
    puts "Choose coordinates for your destroyer"
    puts "The two coordinates should be side by side"
    puts " >> "
    coords = gets.chomp
  end
end
