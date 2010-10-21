class AlterUsers < ActiveRecord::Migration
  def self.up
    change_column :users, :premium, :integer
  end

  def self.down
    change_column :users, :premium, :boolean
  end
end
