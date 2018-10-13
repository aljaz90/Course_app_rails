class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#   public links = {
#       "Home" => "root_path",
#       "About" => "about_path",
#       "Create a Course" => "courses_new_path"
#   }
    
    helper_method :current_user, :logged_in?
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    def logged_in?
       !!current_user
    end
    
    def require_user
        if !logged_in?
            flash[:warning] = "You need to be logged in to do that!"
            redirect_to login_path
        end
    end
    
    def require_same_user
        if @current_user != @user_id
            flash[:error] = "You can't to do that!"
            redirect_to user_path(current_user)
        end
    end
end
