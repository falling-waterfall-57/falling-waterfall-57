class CreateViewsEmails < ActiveRecord::Migration
  def self.up
    create_table :views_emails do |t|
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :views_emails
  end
end
