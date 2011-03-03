class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
							params[:sessions][:password])
	if user.nil?
	  flash.now[:error] = "Invalid email/password combination."	
	  @title = "Sign in"
	  render 'new'
	else
		# Handle successful signin
	end
  end
  
  def destroy
	
  end

end
