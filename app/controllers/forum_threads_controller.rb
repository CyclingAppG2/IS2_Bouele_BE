class ForumThreadsController < ApplicationController
  before_action :set_forum_thread, only: [:show, :update, :destroy]

  # GET /forum_threads
  def index
    @forum_threads = ForumThread.all
    render json: @forum_threads
  end

  def new
    @forum_thread = ForumThread.new
  end

  # GET /forum_threads/1
  def show
    #render json: @forum_thread
  end

  # POST /forum_threads
  def create
    @forum_thread = ForumThread.new(forum_thread_params)

    if @forum_thread.save
      #render json: @forum_thread, status: :created, location: @forum_thread
     redirect_to @forum_thread
    else
      render json: @forum_thread.errors, status: :unprocessable_entity
      #!render 'new'
    end
  end

  def edit

  end

  # PATCH/PUT /forum_threads/1
  def update
    if @forum_thread.update(forum_thread_params)
      redirect_to @forum_thread
    else
      render json: @forum_thread.errors, status: :unprocessable_entity
    end
  end

  # DELETE /forum_threads/1
  def destroy
    @forum_thread.destroy
    #redirect_to Where?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum_thread
      @forum_thread = ForumThread.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def forum_thread_params
      params.require(:forum_thread).permit(:title, :text, :images, :user_id, :subforum_id, :createdat, :updatedat)
    end
end
