require "test_helper"

class PlanosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @plano = planos(:one)
  end

  test "should get index" do
    get planos_url
    assert_response :success
  end

  test "should get new" do
    get new_plano_url
    assert_response :success
  end

  test "should create plano" do
    assert_difference("Plano.count") do
      post planos_url, params: { plano: { nome: @plano.nome, valor: @plano.valor } }
    end

    assert_redirected_to plano_url(Plano.last)
  end

  test "should show plano" do
    get plano_url(@plano)
    assert_response :success
  end

  test "should get edit" do
    get edit_plano_url(@plano)
    assert_response :success
  end

  test "should update plano" do
    patch plano_url(@plano), params: { plano: { nome: @plano.nome, valor: @plano.valor } }
    assert_redirected_to plano_url(@plano)
  end

  test "should destroy plano" do
    assert_difference("Plano.count", -1) do
      delete plano_url(@plano)
    end

    assert_redirected_to planos_url
  end
end
