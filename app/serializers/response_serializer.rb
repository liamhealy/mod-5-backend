class ResponseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :post_id, :body
end
