class Space < ApplicationRecord
  validates :type_of_space, presence: true, uniqueness: true
end
