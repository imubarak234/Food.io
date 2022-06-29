class AccountDetail < ApplicationRecord
  belongs_to :user

  has_many :account_details
  has_many :memberships

  validates :bank, presence: true
  validates :account_number, presence: true

end
