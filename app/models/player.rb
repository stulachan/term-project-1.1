class Player < ActiveRecord::Base

attr_reader :players, :hands


#Constructor initialize the current logged in players
def initialize(count)
	@players = Array.new(count,0) #...an array initialzed with 0's with "count" number of users

	@hands= Array.new(@players.length,0){Array.new(2,0)} #...so..[ [0,0] , [0,0] ]
end


def setHands
   #hands[0] is firstplayer hand
   #hand[1] is second players hand	
   @hands[0] = Table.setCard  #first [player have two cards on hand i.e [ [twocards], [0,0] ]
   @hands[1] = Table.setCard  #second [player have two cards on hand i.e [ [twocards], [another two cards] ]
end




end


