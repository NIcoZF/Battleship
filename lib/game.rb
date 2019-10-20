$LOAD_PATH.unshift File.expand_path(__dir__)

require 'player'

class Game
  def initialize
    @human_player = Player.new("bobby")
    @computer_player =
    @current_player
    @status ='on going'
    @turns_counter = 0
  end


  def play
    @human_player.board.render
    #loop do
      #set_the_fleet
    #  break if winning_combination
    #end
    


    
  end

  

end