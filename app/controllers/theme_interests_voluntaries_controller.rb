class ThemeInterestsVoluntariesController < ApplicationController
  before_action :set_theme_interests_voluntary, only: [:show, :update, :destroy]

  # GET /theme_interests_voluntaries
  def index
    @theme_interests_voluntaries = ThemeInterestsVoluntary.all

    render json: @theme_interests_voluntaries
  end

  # GET /theme_interests_voluntaries/1
  def show
    render json: @theme_interests_voluntary
  end

  # POST /theme_interests_voluntaries
  def create
    @theme_interests_voluntary = ThemeInterestsVoluntary.new(theme_interests_voluntary_params)

    if @theme_interests_voluntary.save
      render json: @theme_interests_voluntary, status: :created, location: @theme_interests_voluntary
    else
      render json: @theme_interests_voluntary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /theme_interests_voluntaries/1
  def update
    if @theme_interests_voluntary.update(theme_interests_voluntary_params)
      render json: @theme_interests_voluntary
    else
      render json: @theme_interests_voluntary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /theme_interests_voluntaries/1
  def destroy
    @theme_interests_voluntary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme_interests_voluntary
      @theme_interests_voluntary = ThemeInterestsVoluntary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def theme_interests_voluntary_params
      params.require(:theme_interests_voluntary).permit(:theme_interest_id, :voluntary_id)
    end
end
