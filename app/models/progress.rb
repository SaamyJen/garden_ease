class Progress < ApplicationRecord
  belongs_to :project
  has_one_attached :photo

  validates :description, presence: true, length: { maximum: 255 }
  validates :photo, presence: true
end
