class AccountDetail < ApplicationRecord
  belongs_to :user

  has_many :account_details
  has_many :memberships
end
