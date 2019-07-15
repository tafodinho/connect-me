class UsersController < ApplicationController
    def index 
        @users = User.possible_friends(current_user.id)
    end

    def show
        @user = User.find(params[:id])git
    end
end
