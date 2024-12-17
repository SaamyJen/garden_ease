class ChangeColumnNameInBenefit < ActiveRecord::Migration[7.1]
  def change
    change_table :benefits do |t|
      t.rename :description, :type_of_benefit
    end
  end
end
