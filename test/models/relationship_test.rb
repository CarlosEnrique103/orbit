require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  def setup
    @relationship = Relationship.new(follower_id: users(:carlos).id,
                                     followed_id: users(:mabel).id)
  end

  test 'test should be valid' do
    assert @relationship.valid?
  end

  test 'test should require a follower_id' do
    @relationship.follower_id = nil
    assert_not @relationship.valid?
  end

  test 'test should a followed_id' do
    @relationship.followed_id = nil
    assert_not @relationship.valid?
  end
end
