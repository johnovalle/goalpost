class PagesController < ApplicationController
  def new
  end
  
  def create
    @page = Page.create(page_params)
    # if @page.valid?
    #       redirect_to user_path(current_user)
    #     else
    #       render user_path(current_user)
    #     end
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
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
    @page = Page.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
    
  end
  
  private
  def page_params
    params.require(:page).permit(:name, :user_id, :timeframe)
  end
  
end
