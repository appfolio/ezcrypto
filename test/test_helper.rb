# frozen_string_literal: true

ENV['RAILS_ENV'] = 'test'

require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  warn e.message
  warn 'Run `bundle install` to install missing gems'
  exit e.status_code
end

if ENV['WITH_COVERAGE'] == 'true'
  require 'simplecov'
  SimpleCov.start do
    enable_coverage :branch
    add_filter %r{\A/test}
  end
end

require 'minitest/autorun'
require 'minitest/reporters'

MiniTest::Reporters.use! unless ENV['RM_INFO']
