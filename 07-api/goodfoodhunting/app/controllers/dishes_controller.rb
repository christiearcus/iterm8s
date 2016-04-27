class DishesController < ApplicationController

  # automagically looks for a template with the same name as the method
  def index
    @dishes = Dish.all
  end

  def new
  end

  def create
    dish = Dish.new
    dish.name = params[:name]
    dish.image_url = params[:image_url]
    if dish.save
      redirect_to '/'
    else
      # render just the template
      render :new
    end
  end

  def show
    @dish = Dish.find(params[:id])
  end

  # display edit form
  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])

    @dish.name = params[:name]
    @dish.image_url = params[:image_url]

    if @dish.save
      redirect_to '/'
    else
      render :edit
    end
  end

  def destroy
    @dish = Dish.find(params[:id])
    if @dish.destroy
      redirect_to '/'
    else
      render :show
    end
  end

end