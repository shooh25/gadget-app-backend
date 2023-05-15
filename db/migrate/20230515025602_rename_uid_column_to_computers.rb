class RenameUidColumnToComputers < ActiveRecord::Migration[7.0]
  def change
    rename_column :computers, :uid, :user_id    
  end
end
