class AddIndexToMessages < ActiveRecord::Migration
  def change
    add_index :messages, [:email, :created_at], unique: true
  end
end
