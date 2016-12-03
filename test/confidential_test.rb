require 'test_helper'

class ConfidentialTest < ActiveSupport::TestCase

  test 'envs' do
    assert_equal 'user', ENV['DB_USER']
    assert_equal 'pass', ENV['DB_PASS']
  end

end
