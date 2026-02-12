class Post < ApplicationRecord
  belongs_to :user
  belongs_to :mastodon_account
end
