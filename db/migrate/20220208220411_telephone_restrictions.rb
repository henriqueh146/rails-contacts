class TelephoneRestrictions < ActiveRecord::Migration[6.1]
  def change
    change_column :telephones, :number, :string, unique: true
  end
end
