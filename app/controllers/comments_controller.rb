class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @posts = Post.all
    @comment = Comment.new
    comment = Comment.new(post_id: params[:comment][:post_id], content: params[:comment][:content])
    
    if comment.save 
      print success
      render 'static_pages/home'
    else
      print failure
      render 'static_pages/home'
    end
    
  end

  def create
  end

  def update
  end

  def delete
  end
end
