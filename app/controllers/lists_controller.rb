class ListsController < ApplicationController
  def new
    @list = board.lists.new
  end

  def show
    @archived =  params[:archived].present?
    @tasks = list.tasks.where(archived: @archived)
  end

  def create
    @list = board.lists.new(list_params)
    if @list.save
      redirect_to board_list_path(board, @list), success: "List created"
    else
      render :new
    end
  end

  def edit
    list
  end

  def update
    if list.update(list_params)
    redirect_to board_path(board, list), info: "List updated"

    else
      render :edit
    end
  end

  def destroy
    list.destroy
    redirect_to boards_path, danger: "List deleted"
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end

  def board
    @board ||= Board.find(params[:board_id])
  end

  def list
    @list ||= board.lists.find(params[:id])
  end
end