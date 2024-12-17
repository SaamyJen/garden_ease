class Benefit < ApplicationRecord
  validates :type_of_benefit, presence: true
end
