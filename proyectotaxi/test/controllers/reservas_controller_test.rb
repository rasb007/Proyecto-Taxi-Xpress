require 'test_helper'

class ReservasControllerTest < ActionController::TestCase
  setup do
    @reserva = reservas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserva" do
    assert_difference('Reserva.count') do
      post :create, reserva: { direccion_llegada: @reserva.direccion_llegada, direccion_salida: @reserva.direccion_salida, distrito_llegada: @reserva.distrito_llegada, distrito_salida: @reserva.distrito_salida, fecha: @reserva.fecha, fecha_recojo: @reserva.fecha_recojo, hora_recojo: @reserva.hora_recojo, modalidad: @reserva.modalidad, pedido: @reserva.pedido, referencia: @reserva.referencia, tiempo: @reserva.tiempo, user_id: @reserva.user_id }
    end

    assert_redirected_to reserva_path(assigns(:reserva))
  end

  test "should show reserva" do
    get :show, id: @reserva
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserva
    assert_response :success
  end

  test "should update reserva" do
    patch :update, id: @reserva, reserva: { direccion_llegada: @reserva.direccion_llegada, direccion_salida: @reserva.direccion_salida, distrito_llegada: @reserva.distrito_llegada, distrito_salida: @reserva.distrito_salida, fecha: @reserva.fecha, fecha_recojo: @reserva.fecha_recojo, hora_recojo: @reserva.hora_recojo, modalidad: @reserva.modalidad, pedido: @reserva.pedido, referencia: @reserva.referencia, tiempo: @reserva.tiempo, user_id: @reserva.user_id }
    assert_redirected_to reserva_path(assigns(:reserva))
  end

  test "should destroy reserva" do
    assert_difference('Reserva.count', -1) do
      delete :destroy, id: @reserva
    end

    assert_redirected_to reservas_path
  end
end
