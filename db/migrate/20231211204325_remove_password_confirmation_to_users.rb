class RemovePasswordConfirmationToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :password_confirmation
  end
end
