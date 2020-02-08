# frozen_string_literal: true

require 'jsonplaceholder_api/json_helper'

module JsonplaceholderApi
  module Api
    class Comment
      PATH = '/comments'

      include JsonHelper

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
