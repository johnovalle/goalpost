class StepsController < ApplicationController
  def create
    @step = Step.new(step_params)
    if @step.save
      redirect_to user_path(current_user)
    else
      redner user_path(current_user)
    end
  end
  
  def update
    @step = Step.find(params[:id])
    @step.update_attributes(step_params)
    if @step.save
      redirect_to user_path(current_user)
    else
      render user_path(current_user)
    end
  end
  
  def destroy
    @step = Step.find(params[:id]).destroy
    redirect_to user_path(current_user)
  end
  
  private
    def step_params
      params.require(:step).permit(:goal_id, :name, :complete)
    end
end
