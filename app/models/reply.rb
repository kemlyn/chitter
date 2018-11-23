class Reply < ApplicationRecord
  belongs_to :comment, optional: true
  belongs_to :user, optional: true
  belongs_to :posts, optional: true

  validates :user_id, presence: true
  validates :comment_id, presence: true
  validates :body, presence: true
end
