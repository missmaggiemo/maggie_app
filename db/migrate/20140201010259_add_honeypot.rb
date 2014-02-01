class AddHoneypot < ActiveRecord::Migration
  def change
    add_column :messages, :checkbox, :boolean, default: false
  end
end
