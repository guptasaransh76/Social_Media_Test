class Post < ApplicationRecord
  belongs_to :user
  acts_as_votable

  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 100}
  default_scope -> { order(created_at: :desc) }

end
