class Forum < ApplicationRecord
  belongs_to :user
  has_many :posts

  validates :title, presence: true
  validates :category, presence: true
end
