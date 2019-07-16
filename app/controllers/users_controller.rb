class UsersController < ApplicationController
    before_action :check_login

    def index 
        @users = User.possible_friends(current_user.id)
    end

    def show
        @user = User.find(params[:id])
    end

  
  
    private 
      def check_login 
        redirect_to login_path if !user_signed_in?
      end
end
