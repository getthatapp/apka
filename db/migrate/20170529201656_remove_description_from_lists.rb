class RemoveDescriptionFromLists < ActiveRecord::Migration[5.0]
  def change
    remove_column :lists, :description, :string
  end
end
