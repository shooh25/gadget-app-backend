class CreateComputers < ActiveRecord::Migration[7.0]
  def change
    create_table :computers do |t|
      t.string :uid, :null => false, :unique => true
      t.string :cpu_name
      t.string :gpu_name

      t.timestamps
    end
  end
end
