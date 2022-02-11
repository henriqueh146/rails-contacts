class ContactsRestrictions < ActiveRecord::Migration[6.1]
  def change
    change_column :contacts, :name, :string, unique: true
  end
end
