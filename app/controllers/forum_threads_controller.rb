class ForumThreadsController < ApplicationController
  before_action :set_forum_thread, only: [:show, :update, :destroy]

  # GET /forum_threads
  def index
    @forum_threads = ForumThread.all.order("created_at DESC")
    render json: @forum_threads
  end

  def new
    @forum_thread = ForumThread.new
  end

  # GET /forum_threads/1
  def show
    #render json: @forum_thread
    @posts = ForumPost.where(forum_thread_id: @forum_thread.id).order("created_at")
    render :json => {:title => @forum_thread.title, :text => @forum_thread.text, :user => @forum_thread.user_id, :posts => @posts}
  end

  # POST /forum_threads
  def create
    @forum_thread = ForumThread.new(title: params[:title], text: params[:text], subforum_id: params[:subforum_id],user_id: @current_user.id)
    
    if @forum_thread.save
      render json: @forum_thread, status: :created, location: @forum_thread
    else
      render json: @forum_thread.errors, status: :unprocessable_entity
    end
  end

  def edit

  end

  # PATCH/PUT /forum_threads/1
  def update
    if @forum_thread.update(forum_thread_params)
      render json: @forum_thread, status: :updated
    else
      render json: @forum_thread.errors, status: :unprocessable_entity
    end
  end

  # DELETE /forum_threads/1
  def destroy
    @forum_thread.destroy
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
