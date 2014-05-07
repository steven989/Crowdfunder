class SessionsController < ApplicationController

    def new

    end 

    def create

        if login(params[:email], params[:password])
            redirect_back_or_to :root
        else
            flash.now[:alert] = "Login Failed"
            render :new
        end 

    end 


    def destroy
        logout
        redirect_back_or_to :root
    end 

end
