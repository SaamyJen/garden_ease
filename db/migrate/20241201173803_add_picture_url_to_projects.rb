class AddPictureUrlToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :picture, :string
  end
end
