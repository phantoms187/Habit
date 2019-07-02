class StaticPagesController < ApplicationController
 
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @activity = current_user.activities.build
      @feed_items = current_user.feed.paginate(page: params[:page])  
     
    end
  end 

  def help
  end
  
  def about
  end 
  
  def contact
  end
  
  def activities
    if logged_in?
       @activity = current_user.activities.build
    end 
  end
  
  def micros
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])  
    end
  end

end
