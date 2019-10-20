$LOAD_PATH.unshift File.expand_path(__dir__)

require 'board'


class Player
attr_accessor :name, :board, :ship_array, :strikes_array

  def initialize(name)
    @board = Board.new
    @name = name
    @ships_array = []
    @strikes_array = []
  end
end