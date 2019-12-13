class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :responses, dependent: :destroy
    has_many :stream_followers, dependent: :destroy
    has_many :streamers, through: :stream_followers
    
    validates :username, presence: true
    validates :username, length: { minimum: 2 }
    validates :email, presence: true
end
