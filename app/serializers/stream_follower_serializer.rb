class StreamFollowerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :streamer_id
end
