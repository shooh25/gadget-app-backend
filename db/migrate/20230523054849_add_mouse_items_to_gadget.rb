class AddMouseItemsToGadget < ActiveRecord::Migration[7.0]
  def change
    add_column :gadgets, :mouse_items, :string
  end
end
