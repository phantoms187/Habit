class ActivitiesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

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
  end
  
  private

    def activities_params
      params.require(:activity).permit(:climb, :duolingo, :teeth, :mia, :run, :keyboard, :pull, :floor, :bell)
    end
end
