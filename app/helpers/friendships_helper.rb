module FriendshipsHelper
    def requested(user_id)
        request = Friendship.where(user_id: current_user, friend_id: user_id, status: 0)

        return true if request.count > 0 else return false
    end
end