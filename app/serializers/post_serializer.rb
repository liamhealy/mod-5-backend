class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :title, :description, :body, :user
  # belongs_to :user

  def user 
    {
      user_id: self.object.user.id,
      username: self.object.user.username
    }
  end
end
