class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
#   public links = {
#       "Home" => "root_path",
#       "About" => "about_path",
#       "Create a Course" => "courses_new_path"
#   }
end
