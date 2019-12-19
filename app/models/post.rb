class Post < ApplicationRecord
    belongs_to :user
    has_many :responses, dependent: :destroy

    validates :title, presence: true
    validates :title, length: { minimum: 2 }
    validates :description, presence: true
    validates :description, length: { minimum: 3 }
    validates :body, presence: true
    validates :body, length: { minimum: 3 }
end
