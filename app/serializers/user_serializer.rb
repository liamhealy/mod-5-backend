class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :first_name, :last_name, :email
  has_many :stream_followers
  has_many :streamers, through: :stream_followers
  has_many :posts
  has_many :responses
end
