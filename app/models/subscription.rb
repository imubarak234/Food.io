class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :account_detail

  validates :category, presence: true
  validates :fee, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :duration, presence: true

end
