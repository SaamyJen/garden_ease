class AddPlantsToProject < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :plants, :string
  end
end
