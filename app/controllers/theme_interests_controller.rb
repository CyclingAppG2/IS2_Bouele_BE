class ThemeInterestsController < ApplicationController
  before_action :set_theme_interest, only: [:show, :update, :destroy]

  # GET /theme_interests
  def index
    @theme_interests = ThemeInterest.all

    render json: @theme_interests
  end

  # GET /theme_interests/1
  def show
    render json: @theme_interest
  end

  # POST /theme_interests
  def create
    @theme_interest = ThemeInterest.new(theme_interest_params)

    if @theme_interest.save
      render json: @theme_interest, status: :created, location: @theme_interest
    else
      render json: @theme_interest.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /theme_interests/1
  def update
    if @theme_interest.update(theme_interest_params)
      render json: @theme_interest
    else
      render json: @theme_interest.errors, status: :unprocessable_entity
    end
  end

  # DELETE /theme_interests/1
  def destroy
    @theme_interest.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme_interest
      @theme_interest = ThemeInterest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def theme_interest_params
      params.require(:theme_interest).permit(:themesinterest)
    end
end
