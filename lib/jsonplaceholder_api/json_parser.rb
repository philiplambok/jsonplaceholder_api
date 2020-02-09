# frozen_string_literal: true

module JsonplaceholderApi
  module JsonParser
    def to_json(*_args)
      JSON.parse(@response)
    end
  end
end
