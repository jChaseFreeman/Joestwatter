require 'test_helper'

class TwattsControllerTest < ActionController::TestCase
  setup do
    @twatt = twatts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twatts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twatt" do
    assert_difference('Twatt.count') do
      post :create, twatt: { content: @twatt.content, name: @twatt.name }
    end

    assert_redirected_to twatt_path(assigns(:twatt))
  end

  test "should show twatt" do
    get :show, id: @twatt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twatt
    assert_response :success
  end

  test "should update twatt" do
    patch :update, id: @twatt, twatt: { content: @twatt.content, name: @twatt.name }
    assert_redirected_to twatt_path(assigns(:twatt))
  end

  test "should destroy twatt" do
    assert_difference('Twatt.count', -1) do
      delete :destroy, id: @twatt
    end

    assert_redirected_to twatts_path
  end
end
