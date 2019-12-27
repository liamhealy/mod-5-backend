class StreamerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name
  has_many :stream_followers

  # def stream_follower
  #   {
  #     user: self.object.stream_follower.user
  #   }
  # end
end
