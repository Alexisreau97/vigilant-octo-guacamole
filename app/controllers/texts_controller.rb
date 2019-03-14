# frozen_string_literal: true

class TextsController < ApplicationController
  def index; end

  def create
    account_sid = ENV['ACCOUNT_SID']
    auth_token = ENV['AUTH_TOKEN']
    client = Twilio::REST::Client.new(account_sid, auth_token)

    from = '+12015145710'
    to = '+33623921538'

    client.messages.create(
      from: from,
      to: to,
      body: params[:input]
    )

    render 'index'
  end
end
