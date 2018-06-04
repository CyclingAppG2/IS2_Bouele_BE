class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :update, :destroy]

  # GET /boards
  def index
    @boards = Board.all

    render json: @boards
  end

  # GET /boards/1
  def show
    render json: @board
  end

  # POST /boards
  def create
    @data = board_params
    @data[:user_id] = @current_user.id 

    @board = Board.new(@data)

    if @board.save
      render json: @board, status: :created, location: @board
    else 
      @board = Board.findBy(@current_user.id, @data[:forum_post_id])
      if @board.nil?

      render json: @board.errors, status: :unprocessable_entity
      else
       if @board.update(@data)
        render json: @board
        else
          render json: @board.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /boards/1
  def update
    if @board.update(board_params)
      render json: @board
    else
      render json: @board.errors, status: :unprocessable_entity
    end
  end

  # DELETE /boards/1
  def destroy
    @board.destroy
  end

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board
      @board = Board.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def board_params
      params.require(:board).permit(:like, :forum_post_id)
    end
end
