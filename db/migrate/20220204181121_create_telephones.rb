class CreateTelephones < ActiveRecord::Migration[6.1]
  def change
    create_table :telephones do |t|
      t.string :number
      t.integer :kind
      t.boolean :main

      t.timestamps
    end
  end
end
