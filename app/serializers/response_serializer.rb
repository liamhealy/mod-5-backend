class ResponseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :post_id, :body, :user
  # belongs_to :user

  def user 
    {
      user_id: self.object.user.id,
      username: self.object.user.username
    }
  end 
end
