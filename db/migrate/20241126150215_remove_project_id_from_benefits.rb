class RemoveProjectIdFromBenefits < ActiveRecord::Migration[7.1]
  def change
    remove_column :benefits, :project_id
    remove_column :spaces, :project_id
    add_column :projects, :selected_benefits, :string, array: true, default: []
    add_column :projects, :selected_spaces, :string, array: true, default: []
  end
end
