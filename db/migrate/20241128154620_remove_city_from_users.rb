class RemoveCityFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :city
    add_column :projects, :location, :string, null: true
  end
end
