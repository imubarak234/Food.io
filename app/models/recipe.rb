class Recipe < ApplicationRecord
  belongs_to :author, class_name: 'User'

  has_many :recipe_foods 

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 250 }

end
