class UsersController < ApplicationController
  
  def index
    users = User.all
    render json: users
  end
  
  def create
    # render json: params
    # user = User.new({name:params[:name], email:params[:email]})
    user = User.new(user_params)
    # # # replace the `user_attributes_here` with the actual attribute keys
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def show
    user = User.find(params[:id])
    render json: user
  end
  
  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end
  
  def destroy
    user = User.find(params[:id])
    if user.delete
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end