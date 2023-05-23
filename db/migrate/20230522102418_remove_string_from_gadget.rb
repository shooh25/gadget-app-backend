class RemoveStringFromGadget < ActiveRecord::Migration[7.0]
  def change
    remove_column :gadgets, :string, :string
  end
end
