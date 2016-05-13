class Player < ActiveRecord::Base

attr_reader :players, :hands, :users


#Constructor initialize the current logged in players
def initialize
	#@users = count
	#@players = Array.new(2,0) 
    @table = Table.new
	@hands= Array.new(2,0) #...so..[0,0] 
end


def setHands
   #hands[0] is firstplayer hand
   @hands = @table.setCard  #first [player have two cards on hand i.e [first_card,second_card]
   return @hands
end


end


