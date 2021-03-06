# frozen_string_literal: true

require 'test_helper'

require 'ezcrypto'
require 'base64'
require 'digest/sha1'

class DigestTest < Minitest::Test
  def test_digest
    ["hello","","test"].each do |data|
      assert_equal Digest::SHA1.digest(data)[0..15],EzCrypto::Digester.digest(data)
    end
  end
  
  def test_digest64
    ["hello","","test"].each do |data|
      assert_equal Base64.encode64(Digest::SHA1.digest(data)[0..15]),EzCrypto::Digester.digest64(data)
    end    
  end
  
  def test_hexdigest
    ["hello","","test"].each do |data|
      assert_equal Digest::SHA1.hexdigest(data)[0..40],EzCrypto::Digester.hexdigest(data)
    end
  end
  
  def test_generate_key
    key=EzCrypto::Digester.generate_key
    assert 16,key.size
  end
  
  def test_generate_key64
    key=EzCrypto::Digester.generate_key64
    assert 24,key.size
  end
  
  def test_generate_hexkey
    key=EzCrypto::Digester.generate_hexkey
    assert 40,key.size
  end
end
