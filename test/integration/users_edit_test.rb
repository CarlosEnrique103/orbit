require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:carlos)
  end

  test 'unsuccessful edit' do
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: { user: { name: '', email: '', password: '', password_confirmation: '' } }
    assert_template 'users/edit'
  end

  test 'succesful edit with friendly forwarding' do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_path(@user)
    name = 'Carlos Enrique'
    email = 'carlosenrique@example.com'
    patch user_path(@user), params: { user: { name: name, email: email, password: '', password_confirmation: '' } }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert @user.name, name
    assert @user.email, email
  end
end
