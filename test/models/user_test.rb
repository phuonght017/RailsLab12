require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'input user' do
    user = User.new(username: 'a', email: 'a', password: 'a')
    assert user.valid?
  end
end
