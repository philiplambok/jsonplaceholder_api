# frozen_string_literal: true

require 'jsonplaceholder_api/api/post'
require 'jsonplaceholder_api/http_helper'

module JsonplaceholderApi
  class Client
    include HttpHelper

    def initialize; end

    def posts
      @posts = Api::Post.new(self)
    end
  end
end