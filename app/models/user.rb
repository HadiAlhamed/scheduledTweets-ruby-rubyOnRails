# email:string
# password_digest:string
# has_secure_password adds some virtual attributes to the model,
# password:virtual string
# password_confirmation:virtual string
class User < ApplicationRecord
  has_secure_password
  has_many :mastodon_accounts
  has_many :posts
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
end
