class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :media_id
      t.string :comments
      t.string :from
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
