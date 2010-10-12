class CreateContainers < ActiveRecord::Migration
  def self.up
    create_table :containers do |t|
      t.integer :view_id
      t.integer :group_id
      t.integer :position_x
      t.integer :position_y
      t.integer :size_x
      t.integer :size_y

      t.timestamps
    end
  end

  def self.down
    drop_table :containers
  end
end
