class FoodsController < ApplicationController

  #Endpoint: /foods get all the foods
  def index
    @foods = Food.all
    render json: @foods
  end

  #Endpoint: /foods/:id get the food with id
  def show
    @food = Food.find(params[:id])
    render json: @food
  end

  #Endpoint: /foods post a new food
  def create
    @food = Food.new(food_params)
    if @food.save
      render json: @food, status: :created
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  #Endpoint: /foods/:id put the food with id
  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      render json: @food
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  #Endpoint: /foods/:id delete the food with id
  def destroy
    @food = Food.find(params[:id])
    if @food.destroy
      head :no_content
    else
      render json: @food.errors, status: :unprocessable_entity
    end
  end

  private

  def food_params
    params.permit(:name, :price)
  end
end
