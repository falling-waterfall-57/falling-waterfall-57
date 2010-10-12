class CreatePieces < ActiveRecord::Migration
  def self.up
    create_table :pieces do |t|
      t.string :title
      t.text :description
      t.string :url
      t.date :reference_date
      t.string :medium
      t.string :mime_type

      t.timestamps
    end
  end

  def self.down
    drop_table :pieces
  end
end
