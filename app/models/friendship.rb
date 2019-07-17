class Friendship < ApplicationRecord
    belongs_to :user 
    belongs_to :friend, class_name: "User"

    validates_uniqueness_of :user_id, :scope => [:friend_id]

    #scope :requested, -> (current_user){ where(friend_id: current_user, status: 0)}
    #scope :is_friend, -> (user_id, current_user){ where(friend_id: current_user, user_id: user_id, status: 1).or(Friendship.where(user_id: current_user, friend_id: user_id, status: 1))}
    def self.is_friend(user_id)
        request = Friendship.where(friend_id: user_id, status: 1).or(Friendship.where(user_id: user_id, status: 1))

        return true if request.count > 0 else return false
    end
    def self.requested(user_id)
        request = Friendship.where(friend_id: user_id, status: 0)

        return true if request.count > 0 else return false
    end
end
