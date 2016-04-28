class DishTypesController < ApplicationController

  def index
    @dish_types = DishType.all
  end

  def new
  end

  def create
    dish_type = DishType.new
    dish_type.name = params[:name]
    # dish_type.image_url = params[:image_url]
    if dish_type.save
      redirect_to '/'
    else
      # render just the template
      render :new
    end
  end

  def show
    @dish_type = DishType.find(params[:id])
  end

  # display edit form
  def edit
    @dish_type = DishType.find(params[:id])
  end

  def update
    @dish_type = DishType.find(params[:id])

    @dish_type.name = params[:name]
    # @dish_type.image_url = params[:image_url]

    if @dish_type.save
      redirect_to '/'
    else
      render :edit
    end
  end

  def destroy
    @dish_type = DishType.find(params[:id])
    if @dish_type.destroy
      redirect_to '/'
    else
      render :show
    end
  end

end