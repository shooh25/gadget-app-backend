class ChangeColumnsAddNotnulToDisplayNamelOnUsers < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :display_name, false
  end
end
