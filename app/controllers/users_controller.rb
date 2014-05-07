class UsersController < ApplicationController

    def new

        @user = User.new

    end 

    def create

        @user = User.new(user_params)

        auto_login(@user)

        if @user.save
            flash[:notice] = "User successfully created!"
            redirect_to :root
        else 
            flash[:notice] = "Something went wrong. Try again."
            render :new
        end 

    end 

    private

    def user_params

        params.require(:user).permit(:email,:password,:password_confirmation)

    end 

end
