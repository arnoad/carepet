class Pet < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :age, presence: true
  validates :pet_type, presence: true
  validates :photo, presence: true
end
