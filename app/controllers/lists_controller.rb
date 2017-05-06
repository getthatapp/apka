class ListsController < ApplicationController
  def new
    @list = board.lists.new
  end

  def show
    list
  end

  def create
    @list = board.lists.new(list_params)
    if @list.save
      redirect_to board_list_path(@board, @list)
    else
      render :new
    end
  end

  def edit
    # board
    list
  end

  def update
    if list.update(list_params)
      redirect_to board_path(board, list), notice: 'List updated'
    else
      render :edit
    end
  end

  def destroy
    list.destroy
    redirect_to boards_path
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end

  def board
   @board = Board.find(params[:board_id])
  end

  def list
    @list = board.lists.find(params[:id])
  end
end