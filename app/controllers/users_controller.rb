class UsersController < ApplicationController
  #Endpoint: /users get all the users
  def index
    @users = User.all
    render json: @users
  end

  #Endpoint: /users/:id get the user with id
  def show
    @user = User.find(params[:id])
    render json: @user
  end

  #Endpoint: /users post a new user
  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  #Endpoint: /users/:id put the user with id
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  #Endpoint: /users/:id delete the user with id
  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.permit(:name, :password)
  end

end
