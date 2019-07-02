class ActivitiesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
       @activity = current_user.activities.build(activities_params)
    if @activity.save
      flash[:success] = "Daily activities recorded!"
      redirect_to users_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
    @activity.destroy
    flash[:success] = "Activity deleted"
    redirect_to request.referrer || root_url
  end
  
  private

    def activities_params
      params.require(:activity).permit(:climb, :duolingo, :teeth, :mia, :run, :keyboard, :pull, :floor, :bell)
    end
    
    def correct_user
      @activity = current_user.activities.find_by(id: params[:user_id])
      redirect_to root_url if @activity.nil?
    end
end
