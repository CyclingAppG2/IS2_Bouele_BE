class VoluntariesController < ApplicationController
  before_action :set_voluntary, only: [:show, :update, :destroy]

  def joinEvent
    @Voluntary = Voluntary.find(params[:voluntary][:id])
    @Event = Event.find(params[:event][:id])
    EventVoluntary.create(voluntary_id: @Voluntary.id, event_id: @Event.id)
    @UserPolymorphism = UserPolymorphism.find_by user_data_id: @Voluntary.id
    @User = User.find(@UserPolymorphism.user_id)
    UserMailer.joined_event_mail(@User, @Event).deliver
  end

  def leaveEvent
    @Event = Event.find(params[:event][:id])
    @Voluntary = Voluntary.find(params[:voluntary][:id])
    @EventVoluntary = EventVoluntary.find_by voluntary_id: @Voluntary.id, event_id: @Event.id
    @EventVoluntary.destroy
    @UserPolymorphism = UserPolymorphism.find_by user_data_id: @Voluntary.id
    @User = User.find(@UserPolymorphism.user_id)
    UserMailer.left_event_mail(@User, @Event).deliver
  end

  def voluntariesInEvents
    return Voluntaries.joins(:EventVoluntary, :UserPolymorphism)
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
