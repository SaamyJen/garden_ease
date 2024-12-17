class AddNameToFlorist < ActiveRecord::Migration[7.1]
  def change
    add_column :florists, :name, :string
  end
end
