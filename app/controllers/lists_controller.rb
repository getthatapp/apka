class ListsController < ApplicationController

	def new
		@board = Board.find(params[:board_id])
		@list = @board.lists.new
	end

	def create
		# binding.pry
		@board = Board.find(params[:board_id])
		@list = @board.lists.new(list_params)
		if @list.save
			redirect_to board_path(@board)
		else
			render :new
		end
	end

	private

	def list_params
		params.require(:list).permit(:title)
	end

end