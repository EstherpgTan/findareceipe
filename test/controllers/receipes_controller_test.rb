require 'test_helper'

class ReceipesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
