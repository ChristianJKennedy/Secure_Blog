class ProfileController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :set_user, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
    render :show
  end

  def edit
    @user = User.find(params[:id])
    unless current_user == @user
      redirect_to root_path, alert: "Access denied."
    end
  end

  def update
    @user = User.find(params[:id])

    unless current_user == @user
      redirect_to root_path, alert: "Access denied."
    end

    if @user.update(params.require(:user).permit(:bio))
      redirect_to profile_path(@user), notice: "Profile updated successfully."
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end


end
