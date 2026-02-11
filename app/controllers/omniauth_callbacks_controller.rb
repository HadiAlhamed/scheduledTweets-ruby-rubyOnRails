class OmniauthCallbacksController < ApplicationController
  def mastodon
    render plain: "success!"
  end
end
