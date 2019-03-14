# frozen_string_literal: true

class TextsController < ApplicationController
  def index; end

  def create
    account_sid = ENV['account_sid']
    auth_token = ENV['auth_token']
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+12015145710' # Your Twilio number
    to = '+33623921538' # Your mobile phone number

    client.messages.create(
      from: from,
      to: to,
      body: params[:input]
    )
  end
end
