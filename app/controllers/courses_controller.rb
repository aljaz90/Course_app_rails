class CoursesController < ApplicationController
    before_action :require_user, only: [:new]
    def index
        @courses = Course.all
    end
    def new
        
    end
end
