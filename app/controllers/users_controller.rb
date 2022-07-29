class UsersController < ApplicationController
  def new

    user = User.new(users_params)
    if user.save
      redirect_to "/users/login"
    else
      flash[:error] = user.errors.full_messages.first
      redirect_to "/users/signup"
    end

  end

  def edit_profile
    render 'users/edit-profile'
  end

  def create
    request_mail = params[:mail]
    request_password = params[:password]
    log_request_mail = User.find_by(mail: request_mail)
    if log_request_mail && log_request_mail.authenticate(params[:password])
      session[:user_id] = log_request_mail.id
      # flash[:notice] = "Logged in successfully."
      redirect_to root_path
    else
      flash.now[:alert] = "There was something wrong with your login details."
      render '/users/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been logged out."
    redirect_to root_path
  end

  private

  def users_params
    params.require(:user).permit(:user_name, :mail, :first_name, :last_name, :gender, :password, :date_of_birth)
  end
end