module FriendshipsHelper
    def requested(user_id)
        request = Friendship.where(user_id: current_user, friend_id: user_id, status: 0)

        return true if request.count > 0 else return false
    end

    def is_friend(user_id) 
        request = Friendship.where(friend_id: current_user, status: 1).or(Friendship.where(user_id: current_user, status: 1))

        return true if request.count > 0 else return false
    end
end
