class UserController < ApplicationController
  
  def new
  end

  def create 
  	user_data = user_params

  	if user_data[:password].length < 5 then
  		redirect_to user_new_path
  	else
	  	user = User.create user_params
  		redirect_to users_path
	  end
  end

  def user_params
  	params.require(:user).permit(:name, :password)
  end

  def list
  	@users = User.all
  end

  def delete
  end
end
