class Comment < ApplicationRecord
  validates :body, presence: true
  validates :user, presence: true
  after_create_commit { CommentUpdateJob.perform_later(self, self.user) }

  belongs_to :user
  belongs_to :product

  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }

end
