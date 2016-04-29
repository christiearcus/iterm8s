module Api
  class LikesController < ApplicationController

    def create
      @like = Like.new
      @like.user_id = User.first.id
      @like.dish_id = Dish.first.id 
      @like.save

      render json: @like.to_json 
    end

  end
end