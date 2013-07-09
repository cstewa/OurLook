class SessionsController < ApplicationController
	def new
	end

	def create
  	@user = User.find_by_email(params[:email])
  	if @user.authenticate(params[:password])
  		session[:email] = @user.email
  		redirect_to user_path(@user.id), :notice => "You're logged in:)"
		end
  end

  def destroy
  	session[:email] = nil
    redirect_to root_path, :notice => "You're logged out."
  end

end
