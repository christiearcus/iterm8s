class Dish < ActiveRecord::Base
  belongs_to :dish_type

  # name must be at least 3 characters long
  validates :name, length: { minimum: 3 }
end
