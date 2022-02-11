class UniqueTelNumberForContact < ActiveRecord::Migration[6.1]
  def change
    add_index :contacts_telephones, [:contact_id, :telephone_id], unique: true
  end
end
