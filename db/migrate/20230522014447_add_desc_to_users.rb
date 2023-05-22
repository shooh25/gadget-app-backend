class AddDescToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :desc, :string
  end
end
