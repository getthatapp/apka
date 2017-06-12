class RemovePasswordConfirmationFromUsers < ActiveRecord::Migration[5.0]
  def up
    remove_column :users, :password_confirmation
  end

  def down
    add_column :users, :password_confirmation, :string    
  end
end
