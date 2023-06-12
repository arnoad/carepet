class Request < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :carers_home, presence: true
  validates :status, presence: true, default: 'pending'
end
