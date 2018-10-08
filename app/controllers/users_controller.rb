class UsersController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save and @user.password == @user.password_confirmation
            flash[:sucess] = "Welcome to Nero #{@user.first_name}"
           redirect_to root_path 
        else
            flash[:danger] = "Something went wrong!"
            render 'new'
        end
    end
    
    def view
        
    end
    
    def edit
        
    end
private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
