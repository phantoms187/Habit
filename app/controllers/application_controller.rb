class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def hello
<<<<<<< HEAD
      render html: "Good Morning Meg!"
=======
      render html: "Hello Trip! Welcome to the World!"
>>>>>>> static-pages
  end 
  
end
