class SessionsController < ApplicationController
    
    def new
    
    end
    
    def create
        user = User.find_by(email: params[:sessions][:email].downcase)
        if user && user.authenticate(params[:sessions][:password])
            session[:user_id] = user.id
            flash[:success] = "Welcome back #{user.first_name}"
            redirect_to root_path
        else
            flash.now[:error] = "Something was wrong with your login information!"
            render 'new'
        end
    end
    
    def destroy
        session[:user_id] = nil
        flash[:success] = "Goodbye!"
        redirect_to root_path
    end
end
