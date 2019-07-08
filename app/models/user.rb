class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_many :friendships 
  has_many :post 
  has_many :comments 
  has_many :likes 
  has_many :friends, through: :friendship
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
