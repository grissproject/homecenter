require 'test_helper'

class RevistaNoviosControllerTest < ActionController::TestCase
  setup do
    @revista_novio = revista_novios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:revista_novios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create revista_novio" do
    assert_difference('RevistaNovio.count') do
      post :create, revista_novio: { direccion: @revista_novio.direccion, fecha: @revista_novio.fecha, nombre_novia: @revista_novio.nombre_novia, nombre_novio: @revista_novio.nombre_novio, texto_invitacion: @revista_novio.texto_invitacion }
    end

    assert_redirected_to revista_novio_path(assigns(:revista_novio))
  end

  test "should show revista_novio" do
    get :show, id: @revista_novio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @revista_novio
    assert_response :success
  end

  test "should update revista_novio" do
    put :update, id: @revista_novio, revista_novio: { direccion: @revista_novio.direccion, fecha: @revista_novio.fecha, nombre_novia: @revista_novio.nombre_novia, nombre_novio: @revista_novio.nombre_novio, texto_invitacion: @revista_novio.texto_invitacion }
    assert_redirected_to revista_novio_path(assigns(:revista_novio))
  end

  test "should destroy revista_novio" do
    assert_difference('RevistaNovio.count', -1) do
      delete :destroy, id: @revista_novio
    end

    assert_redirected_to revista_novios_path
  end
end
