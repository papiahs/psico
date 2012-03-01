require 'test_helper'

class AutorPicsControllerTest < ActionController::TestCase
  setup do
    @autor_pic = autor_pics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:autor_pics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create autor_pic" do
    assert_difference('AutorPic.count') do
      post :create, :autor_pic => @autor_pic.attributes
    end

    assert_redirected_to autor_pic_path(assigns(:autor_pic))
  end

  test "should show autor_pic" do
    get :show, :id => @autor_pic.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @autor_pic.to_param
    assert_response :success
  end

  test "should update autor_pic" do
    put :update, :id => @autor_pic.to_param, :autor_pic => @autor_pic.attributes
    assert_redirected_to autor_pic_path(assigns(:autor_pic))
  end

  test "should destroy autor_pic" do
    assert_difference('AutorPic.count', -1) do
      delete :destroy, :id => @autor_pic.to_param
    end

    assert_redirected_to autor_pics_path
  end
end
