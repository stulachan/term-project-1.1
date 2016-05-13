class PlayerController < ApplicationController

   attr_reader :number_of_users


   def initialize
   	@number_of_users =  User.count
   	Players.new(@number_of_users)
   	Players.setHands
   end


end
