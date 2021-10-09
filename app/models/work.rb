class Work < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :text, presence: true
end
