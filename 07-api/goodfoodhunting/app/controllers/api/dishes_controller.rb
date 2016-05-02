module Api
  class DishesController < ApplicationController

    def index
      @dishes = Dish.all
      render json: @dishes.to_json
    end

    def create
      dish = Dish.new
      dish.name = params[:name]
      dish.image_url = params[:image_url]
      if dish.save
        render json: dish.to_json(methods: :like_count), status: 201
      else
        render json: dish.errors.to_json
      end
    end

  end
end