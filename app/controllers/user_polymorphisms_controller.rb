class UserPolymorphismsController < ApplicationController
  before_action :set_user_polymorphism, only: [:show, :update, :destroy]

  # GET /user_polymorphisms
  def index
    @user_polymorphisms = UserPolymorphism.all

    render json: @user_polymorphisms
  end

  # GET /user_polymorphisms/1
  def show
    render json: @user_polymorphism
  end

  # POST /user_polymorphisms
  def create
    @user_polymorphism = UserPolymorphism.new(user_polymorphism_params)

    if @user_polymorphism.save
      render json: @user_polymorphism, status: :created, location: @user_polymorphism
    else
      render json: @user_polymorphism.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_polymorphisms/1
  def update
    if @user_polymorphism.update(user_polymorphism_params)
      render json: @user_polymorphism
    else
      render json: @user_polymorphism.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_polymorphisms/1
  def destroy
    @user_polymorphism.destroy
  end

  def getTypeUser
    aux =  UserPolymorphism.getTypeUser(@current_user.id)
    if aux.nil?
      render json: {
        success: "false",
        data: "null"
    }, status: :unprocessable_entity
    else
      set_user_by_id_polymorphism(aux.id)
      render json: {
        success: "true",
        data: @user_polymorphism
    }
    end
    
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_polymorphism
      @user_polymorphism = UserPolymorphism.find(params[:id])
    end

    def set_user_by_id_polymorphism(id)
      @user_polymorphism = UserPolymorphism.find(id)
    end

    # Only allow a trusted parameter "white list" through.
    def user_polymorphism_params
      params.require(:user_polymorphism).permit(:user_id, :user_data_id, :user_data_type)
    end
end
