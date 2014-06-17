require 'test_helper'

class PanfletosControllerTest < ActionController::TestCase
  setup do
    @panfleto = panfletos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panfletos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create panfleto" do
    assert_difference('Panfleto.count') do
      post :create, panfleto: { descripcion: @panfleto.descripcion, titulo: @panfleto.titulo }
    end

    assert_redirected_to panfleto_path(assigns(:panfleto))
  end

  test "should show panfleto" do
    get :show, id: @panfleto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panfleto
    assert_response :success
  end

  test "should update panfleto" do
    put :update, id: @panfleto, panfleto: { descripcion: @panfleto.descripcion, titulo: @panfleto.titulo }
    assert_redirected_to panfleto_path(assigns(:panfleto))
  end

  test "should destroy panfleto" do
    assert_difference('Panfleto.count', -1) do
      delete :destroy, id: @panfleto
    end

    assert_redirected_to panfletos_path
  end
end
