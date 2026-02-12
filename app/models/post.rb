class Post < ApplicationRecord
  belongs_to :user
  belongs_to :mastodon_account
  validates :body, length: { minimum: 1, maximum: 280 }
  validates :publish_at, presence: true

  after_initialize do
    self.publish_at ||= 24.hours.from_now
  end

  def published?
    post_id?
  end
end
