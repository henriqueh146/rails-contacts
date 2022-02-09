class UserRestrictions < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :name, :string, unique: true
  end
end
