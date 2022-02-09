class RemoveAttributesFromTelephone < ActiveRecord::Migration[6.1]
  def change
    change_table :telephones do |t|
      t.remove :kind, :main
    end
  end
end
