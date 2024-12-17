class ChangeDifficultyToIntegerInProjects < ActiveRecord::Migration[7.1]
  def change
    change_column :projects, :difficulty, :integer
  end
end
