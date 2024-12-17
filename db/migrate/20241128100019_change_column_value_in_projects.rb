class ChangeColumnValueInProjects < ActiveRecord::Migration[7.1]
  def change
    remove_column :projects, :selected_benefits
    remove_column :projects, :selected_spaces
    add_column :projects, :selected_benefits, :integer, array: true, default: []
    add_column :projects, :selected_spaces, :integer, array: true, default: []
  end
end
