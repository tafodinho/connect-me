class UsersController < ApplicationController
    def index 
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        if @user.image.nil?
            @user.image = "avatar.jpeg"
            @user.name = "Anonymous"
        end
    end

    def create 
        user = User.new(user_params)

        if user.save 
            flash[:success] = "User created"
            redirect_to root_path
        else 
            flash[:danger] = "User created"
            redirect_to signup_path
        end
    end 

    private 

        def user_params 
            params.requre(:user).permit(:name, :email, :password, :password_confirmation)
        end
end
