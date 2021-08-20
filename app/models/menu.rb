class Menu < ApplicationRecord

  validates :name,    presence: true
  validates :price,   presence: true
  validates :profile,  presence: true
  validates :image, presence: true

  has_one_attached :image
  belongs_to :user
end
