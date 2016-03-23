require 'test_helper'

class AnimalsControllerTest < ActionController::TestCase
  test "should get view_animals" do
    get :view_animals
    assert_response :success
  end

  test "should get creat_animals" do
    get :creat_animals
    assert_response :success
  end

end
