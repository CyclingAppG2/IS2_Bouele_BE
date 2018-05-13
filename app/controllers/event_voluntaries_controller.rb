class EventVoluntariesController < ApplicationController
  before_action :set_event_voluntary, only: [:show, :update, :destroy]

  # GET /event_voluntaries
  def index
    @event_voluntaries = EventVoluntary.all

    render json: @event_voluntaries
  end

  # GET /event_voluntaries/1
  def show
    render json: @event_voluntary
  end

  # POST /event_voluntaries 
  def create
    @event_voluntary = EventVoluntary.new(event_voluntary_params)
    if !EventVoluntary.validateAll(params[:event_voluntary][:event_id])
      render json: {
        success: "false",
        data: "Evento lleno o expirado"
    }, status: :unprocessable_entity
    else
      if @event_voluntary.save 
        render json: @event_voluntary, status: :created, location: @event_voluntary
        UserMailer.joined_event_mail(@current_user, Event.find(params[:event_voluntary][:event_id])).deliver
      else
        render json: @event_voluntary.errors, status: :unprocessable_entity
      end
  end
  end

  # PATCH/PUT /event_voluntaries/1
  def update
    if @event_voluntary.update(event_voluntary_params)
      render json: @event_voluntary
    else
      render json: @event_voluntary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /event_voluntaries/1
  def destroy
    @event_voluntary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_voluntary
      @event_voluntary = EventVoluntary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_voluntary_params
      params.require(:event_voluntary).permit(:scorevoluntary, :scoreorganization, :commentsvoluntary, :commentsorganization, :event_id, :voluntary_id)
    end
end
