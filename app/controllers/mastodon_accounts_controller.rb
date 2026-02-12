class MastodonAccountsController < ApplicationController
  before_action :require_user_logged_in!
  def index
    @mastodon_accounts = Current.user.mastodon_accounts.all
  end

  def destroy
    @account = Current.user.mastodon_accounts.find(params[:id])
    @account.destroy
    redirect_to mastodon_accounts_path, notice: "Successfully disconnected @#{@account.username}"
  end
end
