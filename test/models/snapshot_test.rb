# frozen_string_literal: true

require 'test_helper'

class SnapshotTest < ActiveSupport::TestCase
  def setup
    @user = users(:carlos)

    # @snapshot = Snapshot.new(content: 'Text of test.', user: @user)
    @snapshot = @user.snapshots.build(content: 'Text of test.')
  end

  test 'should be valid' do
    puts @snapshot
    assert @snapshot.valid?
  end

  test 'user_id should be present' do
    @snapshot.user_id = nil
    assert_not @snapshot.valid?
  end

  test 'content shoud be present' do
    @snapshot.content = '   '
    assert_not @snapshot.valid?
  end

  test 'content be no more than 250 characters' do
    @snapshot.content = 'c' * 251
    assert_not @snapshot.valid?
  end

  test 'order should be most recent feedback/snapshot first' do
    assert_equal snapshots(:most_recent), Snapshot.first
  end
end
