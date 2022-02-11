class UniqueContactForUser < ActiveRecord::Migration[6.1]
  def change
    add_index :contacts_users, [:user_id, :contact_id], unique: true
  end
end
