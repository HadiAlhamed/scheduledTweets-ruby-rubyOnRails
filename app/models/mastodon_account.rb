class MastodonAccount < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates :username, uniqueness: true
end
