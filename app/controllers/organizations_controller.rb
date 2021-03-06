class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :update, :destroy, :statistics]

  def createEvent
    @event = Event.new(organization_id: params[:event][:organization_id],
	name: params[:event][:name],
	description: params[:event][:description],
	duration: params[:event][:duration],)
 #    Event.new(organization_id: 2,
#	name: "Testings",
#	description: Faker::Lovecraft.fhtagn(11),
#	duration: 5,)
    if @event.save!
      render json: @event, status: :ok
    else
      render json: @event.errors , status: :unprocessable_entity
    end
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
    if @current_user.user_polymorphism.user_data_type != "Organization"
      render json: {
        success: "false",
        data: @aux.errors
    }, status: :unauthorized
    else
      if @organization.update(organization_params)
        render json: @organization
      else
        render json: @organization.errors, status: :unprocessable_entity
      end
  end
  end

  # DELETE /organizations/1
  def destroy
    @organization.destroy
  end

  def statistics
    if @current_user.user_polymorphism.user_data_type != "Organization"
      render json: {
        success: "false",
        data: @aux.errors
    }, status: :unauthorized
    else

      @data = Organization.getMyStatistics(@organization.id)
      respond_to do |format|
        format.json {render   json: @data.as_json}
        format.pdf do 
          pdf = StatisticPdf.new(@current_user.user_polymorphism.user_data, @data)
          send_data pdf.render, filename: "Statistics #{@current_user.user_polymorphism.user_data.firm}.pdf ",
                                type: "application/pdf",
                                disposition: "inline"
        end
      end
      # render json: data.as_json
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def organization_params
      params.require(:organization).permit(:category, :NIT, :mainaddress, :branches, :logo, :firm,  :minicipality_id, :organization_category_id)
    end


end
