class User < ApplicationRecord
    has_many :posts
    has_many :responses
    has_many :stream_followers
    has_many :streamers, through: :stream_followers
    
    validates :username, presence: true
    validates :username, length: { minimum: 2 }
    validates :email, presence: true
end
