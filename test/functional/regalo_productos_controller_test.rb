require 'test_helper'

class RegaloProductosControllerTest < ActionController::TestCase
  setup do
    @regalo_producto = regalo_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regalo_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create regalo_producto" do
    assert_difference('RegaloProducto.count') do
      post :create, regalo_producto: { activo: @regalo_producto.activo, mensaje: @regalo_producto.mensaje }
    end

    assert_redirected_to regalo_producto_path(assigns(:regalo_producto))
  end

  test "should show regalo_producto" do
    get :show, id: @regalo_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @regalo_producto
    assert_response :success
  end

  test "should update regalo_producto" do
    put :update, id: @regalo_producto, regalo_producto: { activo: @regalo_producto.activo, mensaje: @regalo_producto.mensaje }
    assert_redirected_to regalo_producto_path(assigns(:regalo_producto))
  end

  test "should destroy regalo_producto" do
    assert_difference('RegaloProducto.count', -1) do
      delete :destroy, id: @regalo_producto
    end

    assert_redirected_to regalo_productos_path
  end
end
