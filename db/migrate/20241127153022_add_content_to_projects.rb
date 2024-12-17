class AddContentToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :content, :text
  end
end
