class RemoveNullFalseeFromProjects < ActiveRecord::Migration[7.1]
  def change
    change_column :projects, :user_id, :bigint, null: true
  end
end
