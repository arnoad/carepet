class Forum < ApplicationRecord
  belongs_to :user
  has_many :posts

  validates :title, presence: true
  validates :category, presence: true
  validates :description, presence: true, length: { maximum: 42 }
end
