class ForumPostsController < ApplicationController
  before_action :set_forum_post, only: [:show, :update, :destroy]

  # GET /forum_posts
  def index
    @forum_posts = ForumPost.all

    render json: @forum_posts
  end

  # GET /forum_posts/1
  def show
    render json: @forum_post
  end

  # POST /forum_posts
  def create
    @data = forum_post_params
    @data[:user_id] = @current_user.id
    @forum_post = ForumPost.new(@data)

    if @forum_post.save
      render json: @forum_post, status: :created, location: @forum_post
    else
      render json: @forum_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /forum_posts/1
  def update
    if @forum_post.user_id == @current_user.id
      if @forum_post.update(forum_post_params)
        render json: @forum_post
      else
        render json: @forum_post.errors, status: :unprocessable_entity
      end
    else
      render json: "Esta respuesta no le pertenece".json
    end
    
  end

  # DELETE /forum_posts/1
  def destroy
    @forum_post.destroy
  end

  def show_by_forum_thread
    if params[:id].nil?
      render json: nil.to_json, status: :not_found
    else
      render json: ForumPost.getAllForumPostByForumThread(params[:id])
    end
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forum_post
      @forum_post = ForumPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def forum_post_params
      params.require(:forum_post).permit(:text, :forum_thread_id)
    end
end
