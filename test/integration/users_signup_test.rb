require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: 'Juan Carlos',
                                         email: 'carlos@example',
                                         password: 'carlos',
                                         password_confirmation: 'juan' } }
    end

    assert_template 'users/new'
  end

  test 'valid signup information' do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { name: 'Juan Carlos',
                                         email: 'juancarlosenrique@example.com',
                                         password: 'juancarlos123',
                                         password_confirmation: 'juancarlos123' } }
    end
    follow_redirect!
    assert_template 'users/show'
    assert logged_in?
  end
end
