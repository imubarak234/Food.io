class User < ApplicationRecord
  has_many :account_details
  has_many :payments
  has_many :foods 
  has_many :memberships
  has_many :posts, foreign_key: 'author_id'
  has_many :likes, foreign_key: 'author_id'
  has_many :comments, foreign_key: 'author_id'
  has_many :recipes, foreign_key: 'author_id'
  
end
