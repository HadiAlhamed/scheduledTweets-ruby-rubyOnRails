class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :mastodon_account, null: false, foreign_key: true
      t.string :post_id
      t.text :body
      t.datetime :publish_at

      t.timestamps
    end
  end
end
