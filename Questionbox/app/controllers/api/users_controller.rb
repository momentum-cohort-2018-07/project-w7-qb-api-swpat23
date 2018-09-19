class Api::UsersController < ApplicationController
  skip_before_action :verify_authentication, only: [:create]
  before_action :set_user, only: [:show, :edit, :destroy]


  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
      if @user.save
        render :show, status: :created, location: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  end

  

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :password, :email)
    end

  

