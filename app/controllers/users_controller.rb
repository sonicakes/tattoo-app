class UsersController < ApplicationController
before_action :authorize
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thanks for joining #{@user.name}"
      redirect_to root_path # Redirect to home if the account is valid
    else
      render :new # Let them retry the form again
    end
  end

  private
  def user_params
    params.require(:user).permit(
      :email,
      :name,
      :password,
      :password_confirmation,
      :user_name,
      :name,
      :profile_image,
      :location,
      :phone,
      :blurb,
      :is_artist )
  end
end
