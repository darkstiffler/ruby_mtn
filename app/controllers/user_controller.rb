class UserController < ApplicationController
  
  def new
  	puts "WEREHERE"
  end

  def create 
  	user_data = user_params

  	if user_data[:password].length < 5 or
  		user_data[:name].length < 3 then
  		redirect_to user_new_path
  	else
	  	user = User.create user_data
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
