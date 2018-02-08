class DinnerFriendsController < ApplicationController
  before_action :set_dinner_friend, only: [:show, :edit, :update, :destroy]

  # GET /dinner_friends
  # GET /dinner_friends.json
  def index
    @dinner_friends = DinnerFriend.all
  end

  # GET /dinner_friends/1
  # GET /dinner_friends/1.json
  def show
  end

  # GET /dinner_friends/new
  def new
    @dinner_friend = DinnerFriend.new
  end

  # GET /dinner_friends/1/edit
  def edit
  end

  # POST /dinner_friends
  # POST /dinner_friends.json
  def create
    @dinner_friend = DinnerFriend.new(dinner_friend_params)

    respond_to do |format|
      if @dinner_friend.save
        format.html { redirect_to @dinner_friend, notice: 'Dinner friend was successfully created.' }
        format.json { render :show, status: :created, location: @dinner_friend }
      else
        format.html { render :new }
        format.json { render json: @dinner_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dinner_friends/1
  # PATCH/PUT /dinner_friends/1.json
  def update
    respond_to do |format|
      if @dinner_friend.update(dinner_friend_params)
        format.html { redirect_to @dinner_friend, notice: 'Dinner friend was successfully updated.' }
        format.json { render :show, status: :ok, location: @dinner_friend }
      else
        format.html { render :edit }
        format.json { render json: @dinner_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinner_friends/1
  # DELETE /dinner_friends/1.json
  def destroy
    @dinner_friend.destroy
    respond_to do |format|
      format.html { redirect_to dinner_friends_url, notice: 'Dinner friend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dinner_friend
      @dinner_friend = DinnerFriend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dinner_friend_params
      params.require(:dinner_friend).permit(:who, :contact_id)
    end
end
