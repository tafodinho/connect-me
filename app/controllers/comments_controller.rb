class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
  end

  def update
  end

  def delete
  end
end
