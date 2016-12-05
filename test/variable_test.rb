require 'test_helper'

class VariableTest < ActiveSupport::TestCase

  test 'assignments' do
    assert_equal 'user', ENV['DB_USER']
    assert_equal 'pass', ENV['DB_PASS']
  end

end
