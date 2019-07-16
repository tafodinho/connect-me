class CommentsController < ApplicationController
  before_action :check_login

  def new
    @comment = Comment.new
    new_comment = Comment.new(comment_params)
    new_comment.user = current_user

    print new_comment.user_id
    if new_comment.save 
      print "success"
      redirect_to root_path
    else
      print "failure"
      redirect_to root_path
    end
    
  end

  

  def update
  end

  def delete
  end

  private 
    def comment_params
      params.require(:comment).permit(:post_id, :content)
    end
     
    def check_login 
      redirect_to login_path if !user_signed_in?
    end
end
