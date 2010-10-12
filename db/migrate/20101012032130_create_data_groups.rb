class CreateDataGroups < ActiveRecord::Migration
  def self.up
    create_table :data_groups do |t|
      t.integer :data_id
      t.string :data_type
      t.integer :group_id
      t.integer :order

      t.timestamps
    end
  end

  def self.down
    drop_table :data_groups
  end
end
