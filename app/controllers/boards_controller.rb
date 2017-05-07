class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to board_path(board)
    else
      render :new
    end
  end

  def show
    board
  end

  def edit
    board
  end

  def update
    if board.update(board_params)
      redirect_to board_path(board), notice: 'Board updated'
    else
      render :edit
    end
  end

  def destroy
    board.destroy
    redirect_to root_path
  end

  private

  def board_params
    params.require(:board).permit(:title)
  end

  def board
   @board ||= Board.find(params[:id])
  end
end