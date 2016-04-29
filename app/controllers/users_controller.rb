class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      redirect_to '/assignments'
    else
      @errors = @user.errors.full_messages
      flash[:errors] = @errors
  	  redirect_to '/users'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
  	params.permit(:first_name, :email, :password)
  end
end
