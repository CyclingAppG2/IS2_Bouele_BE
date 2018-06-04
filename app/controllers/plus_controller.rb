class PlusController < ApplicationController
  before_action :set_plu, only: [:show, :update, :destroy]

  # GET /plus
  def index
    @plus = Plu.all

    render json: @plus
  end

  # GET /plus/1
  def show
    render json: @plu
  end

  # POST /plus
  def create
    @plu = Plu.new(plu_params)

    if @plu.save
      render json: @plu, status: :created, location: @plu
    else
      render json: @plu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /plus/1
  def update
    if @plu.update(plu_params)
      render json: @plu
    else
      render json: @plu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /plus/1
  def destroy
    @plu.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plu
      @plu = Plu.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def plu_params
      params.require(:plu).permit(:name)
    end
end
