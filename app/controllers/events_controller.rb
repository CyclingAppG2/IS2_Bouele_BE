class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]

  def rateVoluntary
    @event = params[:event]
    @voluntary = params[:voluntary]
    @score = params[:score]
    @event_voluntary = EventVoluntary.find(voluntary_id: @voluntary.id, event_id: @event.id)
    @event_voluntary.scorevoluntary = @score
  end

  def commentAboutEvent
    @event = params[:event]
    @voluntary = params[:voluntary]
    @comment = params[:comment]
    @event_voluntary = EventVoluntary.find(voluntary_id: @voluntary.id, event_id: @event.id)
    @event_voluntary.commentsorganization = @comment
  end

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
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created, location: @event
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
      params.require(:event).permit(:name, :description, :locations, :duration, :photos, :datetime, :plus)
    end
end
