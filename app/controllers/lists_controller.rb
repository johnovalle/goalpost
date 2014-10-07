class ListsController < ApplicationController
  def new
  end
  
  def create
    @list = List.new(list_params)
    @list.save
    
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
    
  end
  def update
    @list = List.find(params[:id])
    @list.update_attributes(list_params)
    if @list.save #does update save? and if it does, does this return false?
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end
  def destroy
    @list = List.find(params[:id]).destroy
    redirect_to user_path(current_user)
  end
  
  private
  def list_params
    params.require(:list).permit(:page_id,:name)
  end
end
