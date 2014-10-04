class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    p @user
    p current_user
    p "SDFDSFDSAFDSFDSAFDSAFDSAFDSAFDSAFDSAFDSAFDS"
    if current_user = @user
      
    else
      redirect_to user_path
    end
  end

  def edit
  end

  def delete
  end
end
