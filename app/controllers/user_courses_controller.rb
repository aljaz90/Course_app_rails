class UserCoursesController < ApplicationController
    before_action :require_user, only: [:create]
    def create
        course_to_add = Course.find(params[:course_id])
        if current_user.courses.include?(course_to_add)
           flash[:error] = "Something went wrong!"
        else
            UserCourse.create(course: course_to_add, user: current_user)
            flash[:info] = "You have succesfully enrolled in this course!"
        end
        redirect_to root_path
    end

end