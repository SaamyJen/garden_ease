class RemoveImageUrlFromProjects < ActiveRecord::Migration[7.1]
  def change
    remove_column :projects, :ImageUrl, :string
  end
end
