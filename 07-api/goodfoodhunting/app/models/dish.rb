class Dish < ActiveRecord::Base
  belongs_to :dish_type
  has_many :likes
  #  has_many :users, through: :likes
  has_many :liked_users, through: :likes, source: 'user'

  # name must be at least 3 characters long
  validates :name, length: { minimum: 3 }
end
