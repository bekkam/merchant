class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    # If the user exists AND the password entered is correct.
    if user && user.authenticate(params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      load_order
      redirect_to products_path, notice: "Logged in"

    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login', notice: "Invalid login.  Please re-enter your credentials."
    end
  end

  def destroy
    session[:user_id] = nil
    session[:order_id] = nil
    redirect_to root_path, notice: "Signed out."
  end
end
