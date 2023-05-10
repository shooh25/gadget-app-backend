class AddNotNullConstraintToUserName < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :user_name, false
  end
end
