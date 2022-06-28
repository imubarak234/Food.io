class Payment < ApplicationRecord
  belongs_to :user 
  belongs_to :account_details
end
