require "test_helper"

class PlantsControllerTest < ActionDispatch::IntegrationTest
  test "should get image_generator" do
    get plants_image_generator_url
    assert_response :success
  end
end
