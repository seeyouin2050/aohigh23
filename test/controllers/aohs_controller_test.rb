require 'test_helper'

class AohsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get newaoh" do
    get :newaoh
    assert_response :success
  end

end
