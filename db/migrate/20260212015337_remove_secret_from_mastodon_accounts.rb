class RemoveSecretFromMastodonAccounts < ActiveRecord::Migration[8.1]
  def change
    remove_column :mastodon_accounts, :secret, :string
  end
end
