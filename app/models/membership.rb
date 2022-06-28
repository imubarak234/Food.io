class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :account_detail
end
