class FriendshipsController < ApplicationController
  def new
    friendship = Friendship.new(friend_id: params[:user_id], status: 0)
    friendship.user = current_user
    
    if friendship.save
      print "Pass"
      redirect_back(fallback_location: users_path)
    else
      print "Fail"
      redirect_back(fallback_location: users_path)
    end
    
  end

  def create
  end

  def update
  end

  def destroy
  end
end
