class AlterUsers2 < ActiveRecord::Migration
  def self.up
    add_column :users, :linkedin_token, :string
    add_column :users, :linkedin_secret, :string
    add_column :users, :linkedin_id, :string
  end

  def self.down
    drop_column :users, :linkedin_id
    drop_column :users, :linkedin_secret
    drop_column :users, :linkedin_token
  end
end
