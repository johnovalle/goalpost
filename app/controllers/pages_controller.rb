class PagesController < ApplicationController
  def create
    @page = Page.new(page_params)
    
    if @page.save
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end
  
  def update
    @page = Page.find_by_id(params[:id])
    @page.update_attributes(page_params)
    if @page.save
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end
  
  def destroy
    Page.find_by_id(params[:id]).destroy
    redirect_to user_path(current_user)
  end
  
  private
  def page_params
    params.require(:page).permit(:name, :user_id, :timeframe)
  end
  
end
