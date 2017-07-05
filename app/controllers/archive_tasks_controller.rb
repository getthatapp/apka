class ArchiveTasksController < ApplicationController
  def update
    list = List.find(params[:list_id])
    task = list.tasks.find(params[:id])
    task.update(archived: !task.archived)
    redirect_to board_list_path(list.board, list)
  end
end

# redirect ma dzialac, mozliwosc zmiany na archived bedac na widoku nie archived
# to samo na archived, notyfikacje