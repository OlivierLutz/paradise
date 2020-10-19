require 'test_helper'

class FraisprosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fraispro = fraispros(:one)
  end

  test "should get index" do
    get fraispros_url
    assert_response :success
  end

  test "should get new" do
    get new_fraispro_url
    assert_response :success
  end

  test "should create fraispro" do
    assert_difference('Fraispro.count') do
      post fraispros_url, params: { fraispro: { bank: @fraispro.bank, compte: @fraispro.compte, date: @fraispro.date, deductibilite: @fraispro.deductibilite, description: @fraispro.description, facture: @fraispro.facture, montant: @fraispro.montant, nature: @fraispro.nature, privepro: @fraispro.privepro, total: @fraispro.total } }
    end

    assert_redirected_to fraispro_url(Fraispro.last)
  end

  test "should show fraispro" do
    get fraispro_url(@fraispro)
    assert_response :success
  end

  test "should get edit" do
    get edit_fraispro_url(@fraispro)
    assert_response :success
  end

  test "should update fraispro" do
    patch fraispro_url(@fraispro), params: { fraispro: { bank: @fraispro.bank, compte: @fraispro.compte, date: @fraispro.date, deductibilite: @fraispro.deductibilite, description: @fraispro.description, facture: @fraispro.facture, montant: @fraispro.montant, nature: @fraispro.nature, privepro: @fraispro.privepro, total: @fraispro.total } }
    assert_redirected_to fraispro_url(@fraispro)
  end

  test "should destroy fraispro" do
    assert_difference('Fraispro.count', -1) do
      delete fraispro_url(@fraispro)
    end

    assert_redirected_to fraispros_url
  end
end
