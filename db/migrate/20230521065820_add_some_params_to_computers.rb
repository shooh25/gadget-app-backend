class AddSomeParamsToComputers < ActiveRecord::Migration[7.0]
  def change
    add_column :computers, :mb_name, :string
    add_column :computers, :memory_name, :string
    add_column :computers, :ssd_name, :string
    add_column :computers, :hdd_name, :string
    add_column :computers, :case_name, :string
    add_column :computers, :cooler_name, :string
    add_column :computers, :power_name, :string

  end
end
