class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy, :voluntaries_in_event]

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
    if @event.start_datetime < Time.current
      render json: {
        success: "false",
        data: "start_date menor a fecha actual"
    }, status: :unprocessable_entity
    return
      end

    if @event.save

      @locations.each do |location|
        @l = Location.new(latitude: location[:lat], longitude: location[:lng], event_id: @event.id, label: location[:label], person_name: location[:person_name], email: location[:email])
        if @l.save == false
          render json: {
            success: "false",
            data: @l.errors
        }, status: :unprocessable_entity
        @event.destroy
        return
        end
      end

      @plus.each do |p|
        @aux = Plu.new(name: p, event_id: @event.id)
        if @aux.save == false
          render json: {
            success: "false",
            data: @aux.errors
        }, status: :unprocessable_entity
        @event.destroy
        return
        end
      end

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

  def events_available
    @events = Event.eventsAvailables
    render json: @events
  end

  def my_events
    @ans = nil
    if @current_user.user_polymorphism.user_data_type == "Organization"
      @ans = Organization.find(@current_user.user_polymorphism.user_data.id)
      # format.json {render   json: @organization.events}
    else
      @ans = Voluntary.find(@current_user.user_polymorphism.user_data.id)
      # format.json {render   json: @organization.events}
    end
    if @ans.nil?
      render json: {
        success: "false",
        data: "Error al consultar events"
    }, status: :unprocessable_entity
    else
      render   json: @ans.events.order(:start_datetime)
    end
    
  end

  def voluntaries_in_event
    if @current_user.user_polymorphism.user_data_type == "Organization"
      @users = []
      @event.voluntaries.each do |v|
        @users.push(v.user_polymorphism.user)
      end
      respond_to do |format|
        format.json {render   json: @event}
        format.pdf {render template: 'organization/list_voluntaries_template_pdf',pdf:'lista'}
      end
    end
    
    
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
