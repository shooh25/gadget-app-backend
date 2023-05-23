class AddSomeColumnsToGadget < ActiveRecord::Migration[7.0]
  def change
    add_column :gadgets, :keyboard_items, :string
    add_column :gadgets, :monitor_items, :string
    add_column :gadgets, :audio_items, :string
    add_column :gadgets, :pad_items, :string
    add_column :gadgets, :phone_items, :string

    remove_column :gadgets, :gadget_category, :string
    remove_column :gadgets, :gadget_items, :string
  end
end
