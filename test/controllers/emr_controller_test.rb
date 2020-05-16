require 'test_helper'

class EmrControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get emr_index_url
    assert_response :success
  end

end
