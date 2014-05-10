class UsersController < ApplicationController

    def new

        @user = User.new

    end 

    def show

        @user = User.find(params[:id])

        if @user == current_user
        @projects = @user.pledges.inject([]) {|projects,pledge| projects.push(pledge.tier.project) unless projects.include? (pledge.tier.project); projects}
        @total_spent = @user.total_spent
        render :show

        else

        render :userpage

        end

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
