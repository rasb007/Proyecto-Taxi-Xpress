require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get nosotros" do
    get :nosotros
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

  test "should get reserva" do
    get :reserva
    assert_response :success
  end

  test "should get registro" do
    get :registro
    assert_response :success
  end

  test "should get servicios" do
    get :servicios
    assert_response :success
  end

end
