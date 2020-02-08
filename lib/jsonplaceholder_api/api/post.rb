# frozen_string_literal: true

require 'jsonplaceholder_api/json_helper'

module JsonplaceholderApi
  module Api
    class Post
      include JsonHelper

      PATH = '/posts'

      def initialize(client)
        @client = client
      end

      def all
        @response = @client.get(PATH)
        self
      end

      def find(id)
        @id = id
        url = "#{PATH}/#{@id}"
        @response = @client.get(url)
        self
      end

      def comments
        url = "#{PATH}/#{@id}/comments"
        @response = @client.get(url)
        self
      end
    end
  end
end
