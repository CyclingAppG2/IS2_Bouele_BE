class ForumThreadsController < ApplicationController
  before_action :set_forum_thread, only: [:show, :update, :destroy, :update_points]

  # GET /forum_threads
  def index
    render json: (ForumThread.all.count/20.0).ceil
  end

  def index_by
    page_now = params[:page].nil? ? 1 : params[:page].to_i
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
    @tags = params[:forum_thread][:tags].nil? ? nil : params[:forum_thread].delete(:tags)
    @data = forum_thread_params
    @data[:user_id] = @current_user.id
    @forum_thread = ForumThread.new(@data)

    if @forum_thread.save
      if !@tags.nil?
        
        @tags.each do |tag|
          puts tag[:title]
          Tag.create(forum_thread_id: @forum_thread.id, title: tag[:title])
        end
      end
      render json: @forum_thread, status: :created, location: @forum_thread
    else
      render json: @forum_thread.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /forum_threads/1
  def update
    if @forum_thread.user_id == @current_user.id
      if !params[:img_prev].nil?
        @data = {img_prev: params[:img_prev]}
      else
       @data = forum_thread_params
      end
      if @forum_thread.update(@data)
        render json: @forum_thread
      else
        render json: @forum_thread.errors, status: :unprocessable_entity
      end
    else
      render json: "El foro no le pertenece", status: :bad_request
    end
  end

  # DELETE /forum_threads/1
  def destroy
    if @forum_thread.user_id == @current_user.id
      @forum_thread.destroy
    else
      render json: "El foro no le pertenece", status: :bad_request
    end
    
  end

  def update_points
    @points = params[:forum_thread][:points].nil? ? 0 : params[:forum_thread][:points].to_i <= @current_user.points_day ? params[:forum_thread][:points].to_i : @current_user.points_day 
    if @points <= @current_user.points_day
      if @current_user.update(points_day: @current_user.points_day-@points) && @forum_thread.update(points: @points+@forum_thread.points)

        render json: @forum_thread
      else
        render json: @forum_thread.errors, status: :unprocessable_entity
      end
    else
      render json: "No posee los suficientes puntos para asignar a este foro".to_json, status: :bad_request
    end    
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
