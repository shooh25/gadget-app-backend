class RenameUserNameToUserNameInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :displayName, :display_name
    rename_column :users, :userName, :user_name
    rename_column :users, :photoUrl, :photo_url
  end
end
