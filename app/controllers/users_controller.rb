class UsersController < ApplicationController
  def new
    @user = User.new()
  end

  def create
    user = params[:user]
    @user_new = User.new(
      nickname: user[:nickname],
      first_name: user[:first_name],
      last_name: user[:last_name],
      email: user[:email],
      password: user[:password]
    )
  
    @user_new.save

    redirect_to  :action => :show, :id => @user_new.id

  end

  def show
    @user =User.find(params[:id])
  end

end
