# frozen_string_literal: true

class TextsController < ApplicationController
  def index; end

  def create
    account_sid = 'AC1bf6cabfceaeb2b6ab6a7f81c7fc038b'
    auth_token = '59c0708b92305341912bbeb110d93ed9'
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
