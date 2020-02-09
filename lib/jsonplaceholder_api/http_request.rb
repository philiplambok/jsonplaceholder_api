# frozen_string_literal: true

require 'faraday'

module JsonplaceholderApi
  module HttpRequest
    BASE_URL = 'https://jsonplaceholder.typicode.com'

    def get(path, params = {})
      url = "#{BASE_URL}#{path}"
      response = Faraday.get url, params
      response.body
    end
  end
end
