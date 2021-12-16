class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:create, :new]
  def show
    @user = current_user
  end

  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to edit_user_path(@user)
    else
      render :new
    end
  end
  def edit
    @user = User.find(params[:id])
  end

end
