require 'test_helper'

class ReservaProductosControllerTest < ActionController::TestCase
  setup do
    @reserva_producto = reserva_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reserva_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserva_producto" do
    assert_difference('ReservaProducto.count') do
      post :create, reserva_producto: { activo: @reserva_producto.activo, mensaje: @reserva_producto.mensaje }
    end

    assert_redirected_to reserva_producto_path(assigns(:reserva_producto))
  end

  test "should show reserva_producto" do
    get :show, id: @reserva_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserva_producto
    assert_response :success
  end

  test "should update reserva_producto" do
    put :update, id: @reserva_producto, reserva_producto: { activo: @reserva_producto.activo, mensaje: @reserva_producto.mensaje }
    assert_redirected_to reserva_producto_path(assigns(:reserva_producto))
  end

  test "should destroy reserva_producto" do
    assert_difference('ReservaProducto.count', -1) do
      delete :destroy, id: @reserva_producto
    end

    assert_redirected_to reserva_productos_path
  end
end
