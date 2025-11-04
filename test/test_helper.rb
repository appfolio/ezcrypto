# frozen_string_literal: true

ENV['RAILS_ENV'] = 'test'

require 'af_gems/test/all'

require 'debug' if ENV['REQUIRE_DEBUG']

module Minitest
  class Test
    def teardown
      super

      File.delete('lorem_ipsum.txt') if File.exist?('lorem_ipsum.txt')
      File.delete('lorem_ipsum.txt.Encrypted') if File.exist?('lorem_ipsum.txt.Encrypted')
    end
  end
end
