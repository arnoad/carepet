class Pet < ApplicationRecord
  belongs_to :user
  has_many :requests, dependent: :destroy

  validates :name, presence: true
  validates :age, presence: true
  validates :pet_type, presence: true
end
