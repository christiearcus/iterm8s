class Dish < ActiveRecord::Base
  # name must be at least 3 characters long
  validates :name, length: { minimum: 3 }
end
