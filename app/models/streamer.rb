class Streamer < ApplicationRecord
    has_many :stream_followers
    has_many :users, through: :stream_followers
end
