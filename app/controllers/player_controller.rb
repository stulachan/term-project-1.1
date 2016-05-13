class PlayerController < ApplicationController

   attr_reader :number_of_users


   def initialize
   	@number_of_users =  User.count
   	Player.new(@number_of_users)
   	Table.new.setCard
   	Player.new.setHands
   end


end
