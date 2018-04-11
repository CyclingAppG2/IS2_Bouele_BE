class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :update, :destroy]

  def createEvent
    @event = Event.new(organization_id: params[:event][:organization_id],
	name: params[:event][:name],
	description: params[:event][:description],
	duration: params[:event][:duration],)
 #    Event.new(organization_id: 2,
#	name: "Testings",
#	description: Faker::Lovecraft.fhtagn(11),
#	duration: 5,)
    @event.save!
  end

  def changeEventName
    @event = Event.find(params[:event][:id])
    @event.name = params[:event][:new_name]
    @event.save
  end
    
  def cancelEvent
    Event.find(params[:event][:id]).destroy
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
