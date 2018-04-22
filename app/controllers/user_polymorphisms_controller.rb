class UserPolymorphismsController < ApplicationController
  before_action :set_user_polymorphism, only: [:show, :edit, :update, :destroy]

  # GET /user_polymorphisms
  def index
    @user_polymorphisms = UserPolymorphism.all
  
    render json: @user_polymorphisms
  end

  # GET /user_polymorphisms/1
  def show
    render json: @user_polymorphisms
  end

  # GET /user_polymorphisms/new
  def new
    @user_polymorphism = UserPolymorphism.new
  end

  # GET /user_polymorphisms/1/edit
  def edit
  end

  # POST /user_polymorphisms
  def create
    @user_polymorphism = UserPolymorphism.new(user_polymorphism_params)

    if @user_polymorphism.save
      render json: @user_polymorphism
    else
      render json: @user_polymorphism.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_polymorphisms/1
  def update
    if @user_polymorphism.update(user_polymorphism_params)
      redirect_to @user_polymorphism, notice: 'User polymorphism was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user_polymorphisms/1
  def destroy
    @user_polymorphism.destroy
    redirect_to user_polymorphisms_url, notice: 'User polymorphism was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_polymorphism
      @user_polymorphism = UserPolymorphism.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_polymorphism_params
      params.require(:user_polymorphism).permit(:user_id, :user_data_id, :user_data_type)
      ##params.fetch(:user_polymorphism, {:user_id, :user_data_id, :user_data_type})
    end
end
