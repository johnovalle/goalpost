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
  
  def edit
    @list = List.find(params[:id])
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
  
  def update
    @list = List.find(params[:id])
    @list.update_attributes(list_params)
    @list.save
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
  def destroy
    @list = List.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
  
  private
  def list_params
    params.require(:list).permit(:page_id,:name)
  end
end
