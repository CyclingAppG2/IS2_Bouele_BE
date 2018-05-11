class InterestVoluntariesController < ApplicationController
  before_action :set_interest_voluntary, only: [:show, :update, :destroy]

  # GET /interest_voluntaries
  def index
    @interest_voluntaries = InterestVoluntary.all

    render json: @interest_voluntaries
  end

  # GET /interest_voluntaries/1
  def show
    render json: @interest_voluntary
  end

  # POST /interest_voluntaries
  def create
    @interest_voluntary = InterestVoluntary.new(interest_voluntary_params)

    if @interest_voluntary.save
      render json: @interest_voluntary, status: :created, location: @interest_voluntary
    else
      render json: @interest_voluntary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /interest_voluntaries/1
  def update
    if @interest_voluntary.update(interest_voluntary_params)
      render json: @interest_voluntary
    else
      render json: @interest_voluntary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /interest_voluntaries/1
  def destroy
    @interest_voluntary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interest_voluntary
      @interest_voluntary = InterestVoluntary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def interest_voluntary_params
      params.require(:interest_voluntary).permit(:theme_interes_id, :voluntary_id)
    end
end
