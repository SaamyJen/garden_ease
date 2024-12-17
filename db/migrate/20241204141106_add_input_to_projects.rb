class AddInputToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :spaces_input, :string
  end
end
