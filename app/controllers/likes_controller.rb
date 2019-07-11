class LikesController < ApplicationController
  def index
  end

  def new
    like = Like.new(post_id: params[:post_id])
    like.user = current_user

    if like.save
      print "pass"
      redirect_to root_path
    else
      print "failure"
      redirect_to root_path
    end
    
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
    def like_params
      # params.reuire(:like).permit(:post_id)
    end
end
