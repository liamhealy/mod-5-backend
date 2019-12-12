class User < ApplicationRecord
    
    validates :username, presence: true
    validates :username, length: { minimum: 2 }
    validates :email, presence: true
end
