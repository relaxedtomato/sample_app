class UsersController < ApplicationController
  def new
	@title = "Sign up"
  end

  
  def show
	@users = User.find(params[:id])
  end
end
