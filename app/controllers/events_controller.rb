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
    if @current_user.user_polymorphism.user_data_type == "Organization"
      @locations = params[:event].delete :locations
    @plus = params[:event].delete :plus
    
    @event = Event.new(event_params)
    if @event.start_datetime.to_i < Time.now.to_i*1000
      render json: {
        success: "false",
        data: "start_date menor a fecha actual " + @event.start_datetime.to_s
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
    else
      render json: {
        success: "false",
        data: "Debe tener cuenta de organizacion para esta accion"
    }, status: :unauthorized
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
    if @current_user.user_polymorphism.user_data_type != "Organization" 
      render json: {
        success: "false",
        data: "Debe tener rol de organizador para eliminar eventos" 
    }, status: :unauthorized
    else
      if @event.organization_id == @current_user.user_polymorphism.user_data.id && @event.start_datetime > Time.now.to_i*1000
        UserMailer.cancel_event_mail(@event.voluntaries, @event).deliver
        @event.destroy
        
        render json: {
          success: "true",
          data: "Este evento fue borrado"
      }, status: :ok
      else
        render json: {
          success: "false",
          data: "Este evento no le pertenece o  el evento ya paso"
      }, status: :unprocessable_entity
      end
    end
    
  end

  def events_available
    @events = Event.eventsAvailables(@current_user.user_polymorphism.user_data.id)
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
      @voluntaries = []
      @users = []
      @event.voluntaries.each do |v|
        user = {"user": v.user_polymorphism.user, "user_polymorphism":  v.user_polymorphism,  "voluntary": v}
        @voluntaries.push(v.user_polymorphism.user)
        @users.push(user)
      end
      respond_to do |format|
        format.json {render   json: {"event": @event, 
                                    "users": @users}}
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
