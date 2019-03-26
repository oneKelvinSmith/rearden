require 'dotenv/load'
require 'pusher'
require 'rearden/version'

module Rearden
  class Error < StandardError; end

  def self.push
    pusher_client = Pusher::Client.new(
      app_id: ENV.fetch('PUSHER_APP_ID'),
      key: ENV.fetch('PUSHER_APP_KEY'),
      secret: ENV.fetch('PUSHER_APP_SECRET'),
      cluster: 'eu',
      encrypted: true
    )

    pusher_client.trigger('rearden', 'cry', message: 'hungry')
  end
end
