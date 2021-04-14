# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'Test User', email: 'test@example.com')
  end

  test 'Should be valid' do
    assert @user.valid?
  end

  test 'name should be present' do
    @user.name = '    '
    assert_not @user.valid?
  end

  test 'email should be present' do
    @user.email = '    '
    assert_not @user.valid?
  end

  test 'name cannot be too long' do
    @user.name = 'c' * 61
    assert_not @user.valid?
  end

  test 'email cannot be too long' do
    @user.email = "#{'a' * 255} example.com"
    assert_not @user.valid?
  end

  test 'email validation should accept valid address' do
    valid_addresses = %w[carlos@mail.com 8754@email.com TONY.smith@example.com tony+smith@example.com]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test 'email validation should not accept invalid address' do
    invalid_addresses = %w[carlos@mail 8754@email,com TONY.smiht_example.com tony@+smith-example.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test 'email should be unique' do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?, "#{@user.email} #{duplicate_user.email} should be different"
  end
end
