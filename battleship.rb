# frozen_string_literal: true

require 'bundler'
Bundler.require

$LOAD_PATH.unshift File.expand_path(__dir__)

require 'board'

class Battleship
  def initialize
    # set up the board
    @board = Board.new
  end

  def welcome
    puts 'Welcome to BATTLESHIP'
    puts 'Would you like to (p)lay, read the (i)nstructions, or (q)uit?'
    print '> '
    command = gets.chomp.to_s

    if %w[p play].include?(command)
      puts "C'est paaarti"
      Board.new
    elsif %w[i instructions].include?(command)
      p 'Tu vas te taper de la lecture'
    elsif %w[q quit].include?(command)
      p 'tchuss'
    end
  end

  def perform
    welcome
    p @board
  end
end

Battleship.new.perform

binding.pry
