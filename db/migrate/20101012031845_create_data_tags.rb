class CreateDataTags < ActiveRecord::Migration
  def self.up
    create_table :data_tags do |t|
      t.integer :data_id
      t.string :data_type
      t.integer :tag_id

      t.timestamps
    end
  end

  def self.down
    drop_table :data_tags
  end
end
