class ThemeInteresController < ApplicationController
  before_action :set_theme_intere, only: [:show, :update, :destroy]

  # GET /theme_interes
  def index
    @theme_interes = ThemeIntere.all

    render json: @theme_interes
  end

  # GET /theme_interes/1
  def show
    render json: @theme_intere
  end

  # POST /theme_interes
  def create
    @theme_intere = ThemeIntere.new(theme_intere_params)

    if @theme_intere.save
      render json: @theme_intere, status: :created, location: @theme_intere
    else
      render json: @theme_intere.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /theme_interes/1
  def update
    if @theme_intere.update(theme_intere_params)
      render json: @theme_intere
    else
      render json: @theme_intere.errors, status: :unprocessable_entity
    end
  end

  # DELETE /theme_interes/1
  def destroy
    @theme_intere.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme_intere
      @theme_intere = ThemeIntere.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def theme_intere_params
      params.require(:theme_intere).permit(:themesinterest)
    end
end
