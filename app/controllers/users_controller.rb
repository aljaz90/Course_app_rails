class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update] 
    before_action :require_user, only: [:show, :edit, :update, :destroy]
    before_action :require_same_user, only: [:edit, :update, :destroy]
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:success] = "Welcome to Nero, #{@user.first_name}"
           redirect_to root_path 
        else
            flash[:error] = "Something went wrong!"
            render 'new'
        end
    end
    
    def show
    end
    
    def edit
    end
    
    def update
        if @user.update(user_params)
            flash[:success] = "Your account has been Updated, #{@user.first_name}"
            redirect_to @user 
        else
            flash[:error] = "Something went wrong!"
            render 'edit'
        end
    end
    def destroy
        
    end
    
    
private
    
    def set_user
        @user = User.find(params[:id])    
    end
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password)
    end
end
