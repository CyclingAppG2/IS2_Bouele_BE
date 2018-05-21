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
    data = event_voluntary_params
    if @current_user.user_polymorphism.user_data_type != "Voluntary"
      render json: {
        success: "false",
        data: "Debes ser un voluntario para unirte a un evento"
    }, status: :precondition_failed
    else
      data[:voluntary_id] = @current_user.user_polymorphism.user_data.id
      @event_voluntary = EventVoluntary.new(data)
      if !EventVoluntary.validateAll(params[:event_voluntary][:event_id])
        render json: {
          success: "false",
          data: "Evento lleno o expirado"
      }, status: :precondition_failed
      else
        if @event_voluntary.save 
          render json: @event_voluntary, status: :created, location: @event_voluntary
          UserMailer.joined_event_mail(@current_user, Event.find(params[:event_voluntary][:event_id])).deliver
        else
          render json: @event_voluntary.errors, status: :unprocessable_entity
        end
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


  def update_scores
    if Event.find(params[:id]).start_datetime > Time.now.to_i*1000
      render json: {
        success: "false",
        data: 'Evento no iniciado'
        }, status: :unprocessable_entity
    else
    if @current_user.user_polymorphism.user_data_type == "Voluntary"
      data = params[:score]
      @event_voluntary = EventVoluntary.voluntaryInEvent(@current_user.user_polymorphism.user_data.id, params[:id]).first
      if @event_voluntary.nil?
        render json: {
          success: "false",
          data: 'El voluntario no exite para este evento'
        }, status: :unprocessable_entity
        return
      end
      if !data[:scoreorganization].nil? && data[:scoreorganization].to_i >= 0 && data[:scoreorganization].to_i <= 5 
        aux = {scoreorganization: data[:scoreorganization].to_i, commentsorganization: data[:commentsorganization]}
        @event_voluntary.update(aux)
        Organization.calculateScore(@current_user.user_polymorphism.user_data.id)
        render json: {
          success: "true",
          data: aux
        }, status: :ok
      else
        render json: {
          success: "false",
          data: 'La calificacion ingresada no es valida'
        }, status: :unprocessable_entity
      end
    else
      data = params[:score]
      if !data[:scorevoluntary].nil? && data[:scorevoluntary].to_i >= 0 && data[:scorevoluntary].to_i <= 5 && data[:voluntary_id]
        @event_voluntary = EventVoluntary.voluntaryInEvent(data[:voluntary_id], params[:id]).first
        if @event_voluntary.nil?
          render json: {
            success: "false",
            data: 'El voluntario no exite para este evento'
          }, status: :unprocessable_entity
          return
        end
        aux = {scorevoluntary: data[:scorevoluntary].to_i, commentsvoluntary: data[:commentsvoluntary]}
        @event_voluntary.update(aux)
        
        render json: {
          success: "true",
          data: aux
        }, status: :ok
      else
        render json: {
          success: "false",
          data: 'Datos imcompletos, se requiere Voluntario y calificacion 0-5'
        }, status: :unprocessable_entity
      end
    end
  end
end

  # DELETE /event_voluntaries/1
  def destroy
    @event_voluntary.destroy
  end

  def leave_event
    @data = EventVoluntary.voluntaryInEvent(@current_user.user_polymorphism.user_data.id, params[:event])
    if @current_user.user_polymorphism.user_data_type == "Voluntary" && !@data.empty?
      @data.first.destroy
      render json: {
        success: "true",
        data: "Has abandonado el evento"
    }, status: :ok
    else
      render json: {
        success: "false",
        data: "Voluntario fuera del evento o evento no existente"
    }, status: :failed_dependency
    end
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
