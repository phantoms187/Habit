require 'test_helper'

class ActivityTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @activity = @user.activities.build(
      climb: false,
      duolingo: false,
      teeth: 1,
      mia: 1,
      run: 1,
      keyboard: 1,
      pull: 1,
      floor: 1,
      bell: 1)
    
  end

  test "should be valid" do
    assert @activity.valid?
  end

  test "user id should be present" do
    @activity.user_id = nil
    assert_not @activity.valid?
  end
  
  test "order should be most recent first" do
    assert_equal activities(:one), Activity.first
  end
end
