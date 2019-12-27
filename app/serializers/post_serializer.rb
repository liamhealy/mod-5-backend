class PostSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :user_id, :title, :description, :body, :user, :responses
  # has_many :responses

  def user 
    {
      user_id: self.object.user.id,
      username: self.object.user.username
    }
  end

  def responses
    # responses.each do |response|
    #   {
    #     user: self.object.response.user,
    #     body: self.object.response.body
    #   }
    # end
  end
end
