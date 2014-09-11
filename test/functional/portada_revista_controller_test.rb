require 'test_helper'

class PortadaRevistaControllerTest < ActionController::TestCase
  setup do
    @portada_revistum = portada_revista(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portada_revista)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portada_revistum" do
    assert_difference('PortadaRevistum.count') do
      post :create, portada_revistum: { activo: @portada_revistum.activo, descripcion: @portada_revistum.descripcion, titulo: @portada_revistum.titulo }
    end

    assert_redirected_to portada_revistum_path(assigns(:portada_revistum))
  end

  test "should show portada_revistum" do
    get :show, id: @portada_revistum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portada_revistum
    assert_response :success
  end

  test "should update portada_revistum" do
    put :update, id: @portada_revistum, portada_revistum: { activo: @portada_revistum.activo, descripcion: @portada_revistum.descripcion, titulo: @portada_revistum.titulo }
    assert_redirected_to portada_revistum_path(assigns(:portada_revistum))
  end

  test "should destroy portada_revistum" do
    assert_difference('PortadaRevistum.count', -1) do
      delete :destroy, id: @portada_revistum
    end

    assert_redirected_to portada_revista_path
  end
end
