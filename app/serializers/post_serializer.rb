class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :title, :description, :body
end
