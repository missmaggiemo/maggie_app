class SessionsController < ApplicationController
  def new
    redirect_to blog_path if signed_in?
  end
  
  def create
    redirect_to blog_path if signed_in?
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      sign_in user
      flash[:success] = "Nice to see you again, " + user.name + "!"
      redirect_back_or user_path(user)
      # redirect_back_or in session_helper
    else 
      flash.now[:error] = 'Invalid email/password combination' # flash.now will only show the flash on the immediate first page
      render 'new'
    end
  end
  
  def destroy
    sign_out
    redirect_to blog_url
  end
end
