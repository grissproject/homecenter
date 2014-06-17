require 'test_helper'

class RevistaMensualsControllerTest < ActionController::TestCase
  setup do
    @revista_mensual = revista_mensuals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:revista_mensuals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create revista_mensual" do
    assert_difference('RevistaMensual.count') do
      post :create, revista_mensual: { descripcion: @revista_mensual.descripcion, estilo: @revista_mensual.estilo, home: @revista_mensual.home, temporada: @revista_mensual.temporada, titulo: @revista_mensual.titulo }
    end

    assert_redirected_to revista_mensual_path(assigns(:revista_mensual))
  end

  test "should show revista_mensual" do
    get :show, id: @revista_mensual
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @revista_mensual
    assert_response :success
  end

  test "should update revista_mensual" do
    put :update, id: @revista_mensual, revista_mensual: { descripcion: @revista_mensual.descripcion, estilo: @revista_mensual.estilo, home: @revista_mensual.home, temporada: @revista_mensual.temporada, titulo: @revista_mensual.titulo }
    assert_redirected_to revista_mensual_path(assigns(:revista_mensual))
  end

  test "should destroy revista_mensual" do
    assert_difference('RevistaMensual.count', -1) do
      delete :destroy, id: @revista_mensual
    end

    assert_redirected_to revista_mensuals_path
  end
end
