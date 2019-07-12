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

  def friend_requests 
    @friend_requests = Friendship.where(friend_id: current_user, status: 0)
    render 'friend_request'
  end

  def friends
    @friends = Friendship.where(friend_id: current_user, status: 1).or(Friendship.where(user_id: current_user, status: 1))
  end


  def create
  end

  def edit
    relationship = Friendship.where(user_id: params[:user_id], friend_id: current_user)
    

    if relationship.update_all(status: 1)
      print "pass"
      redirect_back(fallback_location: friend_requests_path)
    else
      print "fail"
      redirect_back(fallback_location: friend_requests_path)
    end
  end

  def update
  end

  def destroy
    relationship = Friendship.where(user_id: params[:user_id], friend_id: current_user).or(Friendship.where(user_id: current_user, friend_id: params[:user_id]))
    if relationship.destroy_all
      print "delete success"
      redirect_back(fallback_location: users_path)
    else
      print "delte fail"
      redirect_back(fallback_location: users_path)
    end
    
  end
end
