require 'test_helper'

class ImagenPortadasControllerTest < ActionController::TestCase
  setup do
    @imagen_portada = imagen_portadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagen_portadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagen_portada" do
    assert_difference('ImagenPortada.count') do
      post :create, imagen_portada: { descripcion: @imagen_portada.descripcion, titulo: @imagen_portada.titulo }
    end

    assert_redirected_to imagen_portada_path(assigns(:imagen_portada))
  end

  test "should show imagen_portada" do
    get :show, id: @imagen_portada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagen_portada
    assert_response :success
  end

  test "should update imagen_portada" do
    put :update, id: @imagen_portada, imagen_portada: { descripcion: @imagen_portada.descripcion, titulo: @imagen_portada.titulo }
    assert_redirected_to imagen_portada_path(assigns(:imagen_portada))
  end

  test "should destroy imagen_portada" do
    assert_difference('ImagenPortada.count', -1) do
      delete :destroy, id: @imagen_portada
    end

    assert_redirected_to imagen_portadas_path
  end
end
