# frozen_string_literal: true

require 'bundler'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  warn e.message
  warn 'Run `bundle install` to install missing gems'
  exit e.status_code
end

require 'af_gems'

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
  test.warning = false
end

namespace :test do
  AfGems::RubyAppraisalTask.new(:all, ['ruby-3.1.3', 'ruby-3.2.1', 'ruby-3.3.0'])
end

task default: :test
