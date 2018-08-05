class SessionController < ApplicationController

  # This controller action shows the login and signup page
  def form_login_signup
   @user = User.new
  end

  # This controller action process the data entered on the SIGNUP form
  def process_signup
    flash[:notice] = "Does this code even execute?"
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thanks for joining #{@user.name}"
      redirect_to root_path # Redirect to home if the account is valid
    else
      flash[:notice] = "Sorry, we couldn't process your signup requests"
      render :form_login_signup # Let them retry the form again
    end
  end



  # This controller action process the data entered on the LOGIN form
  def process_login
  # This is the action to which the login form post request is posted. It will add the user's id to the session hash, which will be used for authentication and authorization throughout the session.
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      # If a user record with the entered in the form is present AND the user is authenticated (using bcrypt's authenticate method and the password entered in the form), store their id in the session hash and redirect them to the root path.
      session[:user_id] = user.id
      flash[:notice] = "Welcome back #{user.name}"
      redirect_to works_path
    else
      # If the user cannot be authenticated, redirect them to the login_path.
      flash[:error] = "Sorry, you did not enter valid credentials"
      redirect_to login_path
    end
  end

  # This is the action to which the user sign-out delete request is posted.
  def logout
    session[:user_id] = nil
    flash[:notice] = "You have logged out."
    redirect_to root_path
  end

  private
  def user_params
    params.permit(
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
