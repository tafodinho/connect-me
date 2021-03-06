class StaticPagesController < ApplicationController
 before_action :check_login

  def home
    @posts = Post.all
    @comment = Comment.new
    @users = User.limit(10)
  end

  private 
    def check_login 
      redirect_to login_path if !user_signed_in?
    end
end
