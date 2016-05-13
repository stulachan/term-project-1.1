class TableController < ApplicationController

  # GET /table
  # GET /posts.json
 attr_reader :number_of_users, :hand1
  
  

  def table
    #@number_of_users =  User.count
    @player = Player.new
    @hand1  = @player.setHands
    @second = @hand1[0]
    @first = @hand1[1]
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
