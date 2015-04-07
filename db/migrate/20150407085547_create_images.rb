class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :target_ip
      t.string :discover_ip
      t.string :status
      t.string :asset_type
      t.integer :priority_level
      t.string :label

      t.timestamps
    end
  end
end
