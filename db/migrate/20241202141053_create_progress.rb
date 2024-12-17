class CreateProgress < ActiveRecord::Migration[7.1]
  def change
    create_table :progresses do |t|
      t.string :description
      t.references :project, null: false, foreign_key: true
      t.timestamps
    end
  end
end
