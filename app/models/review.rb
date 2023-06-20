class Review < ApplicationRecord
  belongs_to :user
  belongs_to :carer, class_name: 'User', foreign_key: :carer_id

  validates :content, presence: true
end
