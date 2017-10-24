class UsersController < ApplicationController
  def index
    @user = User.all

    render json: @user
  end

  # def create
  #   render json: params
  # end
  #
  # def show
  #   render json: params
  # end

  def create
    user = User.new(user_params)

    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    @user = User.find(params[:id])

    if @user
      render json: @user
    else
      render json: @user.errors.full_messages, status: 404
    end
  end

  def destroy
    @user = User.find(params[:id])

    if @user.destroy
      render json: @user
    else
      render text: "You can't destroy what doesn't exist"
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def user_params
    params[:users].permit(:username)
  end



end
