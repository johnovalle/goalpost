class UsersController < ApplicationController
  def show
    if User.find_by_id(params[:id]) == current_user && user_signed_in?
      @user = User.find(params[:id])
      @new_page = @user.pages.build
    else
      redirect_to root_path
    end
  end

  def edit
    #test
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
  end

  def delete
    #test
    User.find(params[:id]).destroy
    redirect_to root_path
  end
end
