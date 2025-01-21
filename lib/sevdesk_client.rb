# lib/sevdesk_client.rb
require "sevdesk_client/version"
require "sevdesk_client/api_client"
# Require other necessary files from sevdesk_client/openapi_client

module SevdeskClient
  class Error < StandardError; end

  def self.client
    @client ||= SevdeskClient::ApiClient.new
  end
end
