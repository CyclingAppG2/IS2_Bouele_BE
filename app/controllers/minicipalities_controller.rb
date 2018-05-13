class MinicipalitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index ]
  before_action :set_minicipality, only: [:show, :update, :destroy]

  # GET /minicipalities
  def index
    @minicipalities = Minicipality.all

    render json: @minicipalities
  end

  # GET /minicipalities/1
  def show
    render json: @minicipality
  end

  # POST /minicipalities
  def create
    @minicipality = Minicipality.new(minicipality_params)

    if @minicipality.save
      render json: @minicipality, status: :created, location: @minicipality
    else
      render json: @minicipality.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /minicipalities/1
  def update
    if @minicipality.update(minicipality_params)
      render json: @minicipality
    else
      render json: @minicipality.errors, status: :unprocessable_entity
    end
  end

  # DELETE /minicipalities/1
  def destroy
    @minicipality.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minicipality
      @minicipality = Minicipality.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def minicipality_params
      params.require(:minicipality).permit(:name)
    end
end
