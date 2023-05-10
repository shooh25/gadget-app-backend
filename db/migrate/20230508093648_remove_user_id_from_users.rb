class RemoveUserIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :userId, :string
    remove_column :users, :string, :string
  end
end
