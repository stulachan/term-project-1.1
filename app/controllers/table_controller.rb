class TableController < ApplicationController

  # GET /table
  # GET /posts.json
 attr_reader :number_of_users, :hand1,:hand2
  
  
#Game logic goes in this table method
  #def table
  

  #end

  def table
    #@number_of_users =  2  #GET THE NUMBER OF USERS LOGGED IN HERE
    @player = Player.new
    @hand1  = @player.setPlayerHand

    #player 1 cards
    @card1_p1 = @hand1[0][0]
    @card1_rank_p1 = @card1_p1[1]
    @card1_suit_p1 = @card1_p1[0]
    
    @card2_p1 = @hand1[1][0]
    @card2_rank_p1 = @card2_p1[1]
    @card2_suit_p1 = @card2_p1[0]
  
    #player 2 cards
    @card1_p2 = @hand1[2][0]
    @card1_rank_p2 = @card1_p2[1]
    @card1_suit_p2 = @card1_p2[0]
  
    @card2_p2 = @hand1[3][0]
    @card2_rank_p2 = @card2_p2[1]
    @card2_suit_p2 = @card2_p2[0]


  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
   # @tables = Table.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    #@tables = Table.new(params)
    
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update

  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy

  end



end
