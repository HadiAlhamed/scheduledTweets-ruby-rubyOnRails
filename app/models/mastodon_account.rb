class MastodonAccount < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates :username, uniqueness: true

  def username_with_at
    "@#{username}"
  end
end
