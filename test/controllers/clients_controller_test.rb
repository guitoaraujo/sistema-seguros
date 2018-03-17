require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { assistant: @client.assistant, budge: @client.budge, city: @client.city, cnpj: @client.cnpj, commercial_supervisor: @client.commercial_supervisor, current_bonus: @client.current_bonus, date: @client.date, director: @client.director, director_cellphone: @client.director_cellphone, director_email: @client.director_email, director_phone: @client.director_phone, estate: @client.estate, insured: @client.insured, insurer: @client.insurer, itens: @client.itens, last_bonus: @client.last_bonus, obs: @client.obs, supervisor: @client.supervisor, supervisor_cellphone: @client.supervisor_cellphone, supervisor_email: @client.supervisor_email, supervisor_phone: @client.supervisor_phone, type: @client.type, validity: @client.validity } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { assistant: @client.assistant, budge: @client.budge, city: @client.city, cnpj: @client.cnpj, commercial_supervisor: @client.commercial_supervisor, current_bonus: @client.current_bonus, date: @client.date, director: @client.director, director_cellphone: @client.director_cellphone, director_email: @client.director_email, director_phone: @client.director_phone, estate: @client.estate, insured: @client.insured, insurer: @client.insurer, itens: @client.itens, last_bonus: @client.last_bonus, obs: @client.obs, supervisor: @client.supervisor, supervisor_cellphone: @client.supervisor_cellphone, supervisor_email: @client.supervisor_email, supervisor_phone: @client.supervisor_phone, type: @client.type, validity: @client.validity } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
