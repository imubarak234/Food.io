class Payment < ApplicationRecord
  belongs_to :user 
  belongs_to :account_details

  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :date, presence: true
  
end
