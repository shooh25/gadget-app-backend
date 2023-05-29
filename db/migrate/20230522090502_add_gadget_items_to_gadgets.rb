class AddGadgetItemsToGadgets < ActiveRecord::Migration[7.0]
  def change
    # add_column :gadgets, :gadget_items, :string, array: true, default: [].to_yaml
    add_column :gadgets, :gadget_items, :string, array: true
    rename_column :gadgets, :userId, :user_id
    
  end
end
