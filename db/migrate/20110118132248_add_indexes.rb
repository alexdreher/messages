class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :messages, :sender_id
    add_index :messages, :recipient_id
    add_index :messages, :subject
  end

  def self.down
    remove_index :messages, :subject
    remove_index :messages, :recipient_id
    remove_index :messages, :sender_id
  end
end