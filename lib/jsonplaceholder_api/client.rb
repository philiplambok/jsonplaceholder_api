# frozen_string_literal: true

require 'jsonplaceholder_api/api/post'
require 'jsonplaceholder_api/api/comment'
require 'jsonplaceholder_api/http_request'

module JsonplaceholderApi
  class Client
    include HttpRequest

    def initialize; end

    def posts
      @posts ||= Api::Post.new(self)
    end

    def comments
      @comments ||= Api::Comment.new(self)
    end
  end
end
