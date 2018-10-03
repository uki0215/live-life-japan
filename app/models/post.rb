class Post < ActiveRecord::Base
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140} #tweets are 140 chars
  default_scope -> { order(created_at: :desc)}
end
