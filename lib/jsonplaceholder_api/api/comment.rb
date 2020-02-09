# frozen_string_literal: true

require 'jsonplaceholder_api/json_parser'

module JsonplaceholderApi
  module Api
    class Comment
      PATH = '/comments'

      include JsonParser

      def initialize(client)
        @client = client
      end

      def find(id)
        url = "#{PATH}/#{id}"
        @response = @client.get(url)
        self
      end
    end
  end
end
