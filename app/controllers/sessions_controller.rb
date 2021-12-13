class SessionsController < ApplicationController
  def new; end

  def create
    auth_hash = request.env['omniauth.auth']

    if session[:user_id]
      # Means our user is signed in. Add the authorization to the user
      User.find(session[:user_id]).add_provider(auth_hash)
      redirect_to '/', notice: 'Logged in.'
    else
      # Log him in or sign him up
      auth = Authorization.find_or_create(auth_hash)

      # Create the session and redirect
      session[:user_id] = auth.user.id
      redirect_to '/', notice: 'Logged in.'
    end
  end

  def destroy
    # Destroy session and redirect
    session[:user_id] = nil
    redirect_to '/', notice: 'Logged out successfully.'
  end

  def failure
    # If error, redirect and show error
    redirect_to '/', notice: 'There was an error.'
  end
end
