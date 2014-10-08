class StepsController < ApplicationController
  def new
  end
  
  def create
    @step = Step.new(step_params)
    @step.save
    
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
  
  def edit
    @step = Step.find(params[:id])
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
  
  def update
    @step = Step.find(params[:id])
    @step.update_attributes(step_params)
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
  
  def destroy
    @step = Step.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.js
    end
  end
  
  private
    def step_params
      params.require(:step).permit(:goal_id, :name, :complete)
    end
end
