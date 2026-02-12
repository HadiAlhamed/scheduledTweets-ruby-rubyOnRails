class AddUniqueIndexToMastodonAccountsUsername < ActiveRecord::Migration[8.1]
  def change
    add_index :mastodon_accounts, [ :user_id, :username ], unique: true, name: "index_mastodon_accounts_on_user_id_and_username"
  end
end
