class DrinksController < ApplicationController
  #Endpoint: /drinks get all the drinks
  def index
    @drinks = Drink.all
    render json: @drinks
  end

  #Endpoint: /drinks/:id get the drink with id
  def show
    @drink = Drink.find(params[:id])
    render json: @drink
  end

  #Endpoint: /drinks post a new drink
  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      render json: @drink, status: :created
    else
      render json: @drink.errors, status: :unprocessable_entity
    end
  end

  #Endpoint: /drinks/:id put the drink with id
  def update
    @drink = Drink.find(params[:id])
    if @drink.update(drink_params)
      render json: @drink
    else
      render json: @drink.errors, status: :unprocessable_entity
    end
  end

  #Endpoint: /drinks/:id delete the drink with id
  def destroy
    @drink = Drink.find(params[:id])
    if @drink.destroy
      head :no_content
    else
      render json: @drink.errors, status: :unprocessable_entity
    end
  end

  private

  def drink_params
    params.permit(:name, :price)
  end
end
