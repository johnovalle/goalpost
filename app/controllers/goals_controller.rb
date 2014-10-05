class GoalsController < ApplicationController
  def create
    @goal = Goal.new(goal_params)
    
    if @goal.save
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end
  
  def update
    @goal = Goal.find(params[:id])
    @goal.update_attributes(goal_params)
    if @goal.save
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end
  
  def destroy
    @goal = Goal.find(params[:id]).destroy
    redirect_to user_path(current_user)
  end
  
  private
    def goal_params
      params.require(:goal).permit(:list_id, :name, :complete)
    end
end