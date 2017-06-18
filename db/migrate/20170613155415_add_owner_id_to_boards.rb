class AddOwnerIdToBoards < ActiveRecord::Migration[5.0]
  def change
    add_column :boards, :owner_id, :integer
  end
end
