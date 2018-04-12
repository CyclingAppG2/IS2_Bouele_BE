class TypeContactsController < ApplicationController
  before_action :set_type_contact, only: [:show, :update, :destroy]

  # GET /type_contacts
  def index
    @type_contacts = TypeContact.all

    render json: @type_contacts
  end

  # GET /type_contacts/1
  def show
    render json: @type_contact
  end

  # POST /type_contacts
  def create
    @type_contact = TypeContact.new(type_contact_params)

    if @type_contact.save
      render json: @type_contact, status: :created, location: @type_contact
    else
      render json: @type_contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /type_contacts/1
  def update
    if @type_contact.update(type_contact_params)
      render json: @type_contact
    else
      render json: @type_contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /type_contacts/1
  def destroy
    @type_contact.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_contact
      @type_contact = TypeContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def type_contact_params
      params.require(:type_contact).permit(:name)
    end
end
