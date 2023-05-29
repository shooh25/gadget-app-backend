class CreateGadgets < ActiveRecord::Migration[7.0]
  def change
    create_table :gadgets do |t|
      t.string :userId, :string, null: false, unique: true
      t.string :gadget_category
      t.timestamps
    end
  end
end
