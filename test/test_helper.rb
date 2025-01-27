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

require 'debug'
require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Test.make_my_diffs_pretty!
Minitest::Reporters.use! unless ENV['RM_INFO']
