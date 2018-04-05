class VoluntariesController < ApplicationController
  before_action :set_voluntary, only: [:show, :update, :destroy]

  def joinEvent
    @event = params[:event]
    @voluntary = params[:voluntary]
    EventVoluntary.create(voluntary_id: @voluntary.id, event_id: @event.id)
  end

  def leaveEvent
    @event = params[:event]
    @voluntary = params[:voluntary]
    @event_voluntary = EventVoluntary.find(voluntary_id: @voluntary.id, event_id: @event.id)
    @event_voluntary.destroy
    #TODO Either add a verification to only leave events that have not yet started or remove this line to hide it from Laura 
  end

  def rateEvent
    @event = params[:event]
    @voluntary = params[:voluntary]
    @score = params[:score]
    @event_voluntary = EventVoluntary.find(voluntary_id: @voluntary.id, event_id: @event.id)
    @event_voluntary.scoreorganization = @score
  end

  def commentAboutEvent
    @event = params[:event]
    @voluntary = params[:voluntary]
    @comment = params[:comment]
    @event_voluntary = EventVoluntary.find(voluntary_id: @voluntary.id, event_id: @event.id)
    @event_voluntary.commentsvoluntary = @comment
  end

  # GET /voluntaries
  def index
    @voluntaries = Voluntary.all

    render json: @voluntaries
  end

  # GET /voluntaries/1
  def show
    render json: @voluntary
  end

  # POST /voluntaries
  def create
    @voluntary = Voluntary.new(voluntary_params)

    if @voluntary.save
      render json: @voluntary, status: :created, location: @voluntary
    else
      render json: @voluntary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /voluntaries/1
  def update
    if @voluntary.update(voluntary_params)
      render json: @voluntary
    else
      render json: @voluntary.errors, status: :unprocessable_entity
    end
  end

  # DELETE /voluntaries/1
  def destroy
    @voluntary.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voluntary
      @voluntary = Voluntary.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def voluntary_params
      params.require(:voluntary).permit(:themesinterest, :score, :birthday, :photo, :gender, :cellphone, :city)
    end
end
