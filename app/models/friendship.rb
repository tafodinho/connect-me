class Friendship < ApplicationRecord
    belongs_to :user 
    belongs_to :friend, class_name: "User"

    validates_uniqueness_of :user_id, :scope => [:friend_id]

    scope :requested, -> (user_id, current_user){ where(user_id: current_user, friend_id: user_id, status: 0)}
    scope :is_friend, -> (user_id, current_user){ where(friend_id: current_user, user_id: user_id, status: 1).or(Friendship.where(user_id: current_user, friend_id: user_id, status: 1))}

end
