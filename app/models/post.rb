class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :comments
  has_many :likes

  validates :title, presence: true, length: { maximum: 200 }
  validates :text, presence: true, length: { maximum: 300 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end
