class GoalsController < ApplicationController
  def new
  end
  
  def create
    @goal = Goal.new(goal_params)
    
    if @goal.save
      
    else
      render user_path(current_user)
    end
    
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
  
  def edit
    @goal = Goal.find(params[:id])
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
  
  def update
    @goal = Goal.find(params[:id])
    @goal.update_attributes(goal_params)
    @goal.save
    respond_to do |format|
      format.html { redirect_to user_page_path(current_user, params[:page_id]) }
      format.js
    end
  end
  
  def destroy
    @goal = Goal.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
  
  private
    def goal_params
      params.require(:goal).permit(:list_id, :name, :complete)
    end
end
