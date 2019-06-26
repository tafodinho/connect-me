class StaticPagesController < ApplicationController
  def home
    flash.now[:success] = "Welcome to the connect-me homepage"
  end
end
