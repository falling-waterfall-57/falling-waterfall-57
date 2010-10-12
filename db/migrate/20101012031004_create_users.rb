class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :folio_name
      t.text :about_me

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
