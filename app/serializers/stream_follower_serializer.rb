class StreamFollowerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :streamer_id

  # def user
  #   {
  #     user_id: self.object.user.id,
  #     username: self.object.user.username
  #   }
  # end

  # def streamer
  #   {
  #     streamer_id: self.object.streamer.id,
  #     name: self.object.streamer.name
  #   }
  # end
end
