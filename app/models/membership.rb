class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :account_detail

  validates :type, presence: true
  validates :fees, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :duration, presence: true

end
