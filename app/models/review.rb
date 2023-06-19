class Review < ApplicationRecord
  belongs_to :user
  belongs_to :carer, class_name: 'User'

  validates :content, presence: true
end
