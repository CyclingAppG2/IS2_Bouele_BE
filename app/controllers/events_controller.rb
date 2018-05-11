class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  # def getStatisticsByUser
    
  # end



  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def create
    @locations = params[:event].delete :locations
    @plus = params[:event].delete :plus
    
    @event = Event.new(event_params)

    if @event.save

      @locations.each do |location|
        l = Location.new(latitude: location[:lat], longitude: location[:lng], event_id: @event.id)
        if l.save == false
          render json: {
            success: "false",
            data: "null"
        }, status: :unprocessable_entity
        return
        end
      end

      @plus.each do |p|
        aux = Plu.new(name: p, event_id: @event.id)
        if aux.save == false
          render json: {
            success: "false",
            data: "null"
        }, status: :unprocessable_entity
        return
        end
      end

      render json: @event, status: :created#, location: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:name, :description, :duration, :start_datetime, :max_voluntaries, :organization_id, files: [])
    end
end
