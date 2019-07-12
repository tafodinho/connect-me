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
end
