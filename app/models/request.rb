class Request < ApplicationRecord
  belongs_to :user
  belongs_to :pet

  before_validation :set_default_status
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :carers_home, presence: true
  validates :status, presence: true, inclusion: { in: ['pending', 'rejected', 'accepted'] }

  private

  def set_default_status
    self.status ||= 'pending'
  end
end
