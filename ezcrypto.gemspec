# frozen_string_literal: true

require_relative 'lib/ezcrypto/version'

Gem::Specification.new do |spec|
  spec.name        = 'ezcrypto'
  spec.version     = EzCrypto::VERSION
  spec.summary     = 'EzCrypto - Simplified Crypto Library'
  spec.email       = 'dev@appfolio.com'
  spec.homepage    = 'https://github.com/appfolio/ezcrypto'
  spec.description = 'EzCrypto is an easy to use wrapper around the poorly documented OpenSSL ruby library.'
  spec.authors     = ['Pelle Braendgaard', 'Micah Wedemeyer', 'Appfolio']
  spec.files  = %w[
    rakefile
    README.rdoc
    README_ACTIVE_CRYPTO
    README_DIGITAL_SIGNATURES
    MIT-LICENSE
    CHANGELOG
    lib/active_crypto.rb
    lib/ezcrypto.rb
    lib/ezsig.rb
    lib/trusted.pem
    test/database.yml
    test/digest_test.rb
    test/dsakey.pem
    test/dsapubkey.pem
    test/dsig_test.rb
    test/ezcrypto_test.rb
    test/protectedsigner.pem
    test/sf_intermediate.crt
    test/store
    test/testchild.pem
    test/testchild.req
    test/testpub.pem
    test/testsigner.cert
    test/testsigner.pem
    test/valicert_class2_root.crt
    test/agree2.com.cert
  ]
  spec.extra_rdoc_files = %w[
    CHANGELOG
    README.rdoc
    README_ACTIVE_CRYPTO
    README_DIGITAL_SIGNATURES
  ]
  spec.test_files = %w[
    test/database.yml
    test/digest_test.rb
    test/dsakey.pem
    test/dsapubkey.pem
    test/dsig_test.rb
    test/ezcrypto_test.rb
    test/protectedsigner.pem
    test/sf_intermediate.crt
    test/store
    test/testchild.pem
    test/testchild.req
    test/testpub.pem
    test/testsigner.cert
    test/testsigner.pem
    test/valicert_class2_root.crt
    test/agree2.com.cert
  ]

  spec.required_ruby_version = Gem::Requirement.new('< 3.4')
  spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/appfolio'
end
