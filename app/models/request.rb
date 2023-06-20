class Request < ApplicationRecord
  belongs_to :carer, class_name: 'User', foreign_key: :user_id
  belongs_to :pet

  before_validation :set_default_status
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true, inclusion: { in: ['Pending', 'Rejected', 'Accepted'] }

  private

  def set_default_status
    self.status ||= 'Pending'
  end
end
