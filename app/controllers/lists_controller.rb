class ListsController < ApplicationController
  def create
    @list = List.new(list_params)
    
    if @list.save
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end
  def update
  end
  def destroy
  end
  
  private
  def list_params
    params.require(:list).permit(:page_id,:name)
  end
end
