class ContactsAndTelephonesAttributes < ActiveRecord::Migration[6.1]
  def change
    change_table :contacts_telephones do |t|
      t.integer :kind
      t.boolean :main
    end
  end
end
