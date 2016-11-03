require 'test_helper'

class DashboardProfessorControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
