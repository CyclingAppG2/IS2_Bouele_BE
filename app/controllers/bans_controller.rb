class BansController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :authenticate_admin!
  #skip_before_action :authenticate_admin!
  before_action :set_ban, only: [:show, :update, :destroy]

  # GET /bans
  def index
    @bans = Ban.all

    render json: @bans
  end

  # GET /bans/1
  def show
    render json: @ban
  end
# GET /bans/showBansUser/1
  def showBansUser
    params.require(:id)
    user = params[:id]
    @allBansUser = Ban.getBansByUser(user)
    render json: @allBansUser
  end
  # POST /bans
  def create
    
    @ban = Ban.new(ban_params)

    if @ban.save
      render json: @ban, status: :created, location: @ban
    else
      render json: @ban.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bans/1
  def update
    if @ban.update(ban_params)
      render json: @ban
    else
      render json: @ban.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bans/1
  def destroy
    @ban.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ban
      @ban = Ban.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ban_params
      params.require(:ban).permit(:log, :reason, :starttime, :endtime)
    end
end
