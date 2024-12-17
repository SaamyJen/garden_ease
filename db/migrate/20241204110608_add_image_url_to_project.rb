class AddImageUrlToProject < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :ImageUrl, :string
  end
end
