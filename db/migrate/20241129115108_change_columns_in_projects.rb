class ChangeColumnsInProjects < ActiveRecord::Migration[7.1]
  def change
    change_column :projects, :duration, :string
    remove_column :projects, :content
    add_column :projects, :standfirst, :string
    add_column :projects, :items, :string
    add_column :projects, :method, :string
    add_column :projects, :fact, :string
  end
end
