class User < ActiveRecord::Base
  has_many :likes
  has_many :dishes, through: :likes
end
