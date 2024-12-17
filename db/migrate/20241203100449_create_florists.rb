class CreateFlorists < ActiveRecord::Migration[7.1]
  def change
    create_table :florists do |t|
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
