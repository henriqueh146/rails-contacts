class LinkContactsToTelephones < ActiveRecord::Migration[6.1]
  def change
    create_join_table :contacts, :telephones
  end
end
