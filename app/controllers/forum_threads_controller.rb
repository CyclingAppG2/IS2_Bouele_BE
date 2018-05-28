class ForumThreadsController < ApplicationController
  before_action :set_forum_thread, only: [:show, :update, :destroy]

  # GET /forum_threads
  def index
    render json: (ForumThread.all.count/20.0).ceil
  end

  def index_by
    page_now = params[:page].nil? ? 1 : params[:page]
    data = params[:by].nil? ? 1 : params[:by].to_i
    page_now > ForumThread.all.count ? 1 : page_now
    @forum_threads = ForumThread.getForumThreadsBy(data, page_now)

    render json: @forum_threads
  end



  # GET /forum_threads/1
  def show
    render json: @forum_thread
  end

  # POST /forum_threads
  def create
    data = forum_thread_params
    data[:user_id] = @current_user.id
    @forum_thread = ForumThread.new(data)

    if @forum_thread.save
      render json: @forum_thread, status: :created, location: @forum_thread
    else
      render json: @forum_thread.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /forum_threads/1
  def update
    if @forum_thread.update(forum_thread_params)
      render json: @forum_thread
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
      params.require(:forum_thread).permit(:body, :img_prev, :event_id, :title)
    end
end
