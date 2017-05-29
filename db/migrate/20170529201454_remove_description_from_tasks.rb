class RemoveDescriptionFromTasks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :description, :string
  end
end
