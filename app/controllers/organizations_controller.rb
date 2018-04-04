class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :update, :destroy]

  def createEvent
    @event = Event.new(params[:event])
    respond_to  do |format|
          @event.save!
    end
  end

  def addPluToEvent
    @plu = Plu.new(params[:plu])
    eventId = params[:event].id
    @plu.event_id = eventId
    @plu.save!
    event
  end

  def addLocationToEvent
    @location = Location.new(params[:plu])
    eventId = params[:event].id
    @location.event_id = eventId
    @location.save!
    event
  end

  def removePluFromEvent
    params[:plu].destroy
  end
    
  def removeLocationFromEvent
    params[:location].destroy
  end

  def removePlusFromPastEvents
    @events = Organization.findAllPastEvents(params[:organization].id)
    @events.each do |e|
      e.plus.each do |p|
        plus.destroy
      end
    end
  end

  def changeEventName(old_name, new_name)
    @event = Event.find_by name: old_name
    @event.name = new_name
  end
    

  # GET /organizations
  def index
    @organizations = Organization.all

    render json: @organizations
  end

  # GET /organizations/1
  def show
    render json: @organization
  end

  # POST /organizations
  def create
    @organization = Organization.new(organization_params)

    if @organization.save
      render json: @organization, status: :created, location: @organization
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /organizations/1
  def update
    if @organization.update(organization_params)
      render json: @organization
    else
      render json: @organization.errors, status: :unprocessable_entity
    end
  end

  # DELETE /organizations/1
  def destroy
    @organization.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def organization_params
      params.require(:organization).permit(:category, :NIT, :mainaddress, :branches, :logo, :firm, :organization_score)
    end
end
