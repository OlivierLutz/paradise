require "application_system_test_case"

class FraisprosTest < ApplicationSystemTestCase
  setup do
    @fraispro = fraispros(:one)
  end

  test "visiting the index" do
    visit fraispros_url
    assert_selector "h1", text: "Fraispros"
  end

  test "creating a Fraispro" do
    visit fraispros_url
    click_on "New Fraispro"

    fill_in "Bank", with: @fraispro.bank
    fill_in "Compte", with: @fraispro.compte
    fill_in "Date", with: @fraispro.date
    fill_in "Deductibilite", with: @fraispro.deductibilite
    fill_in "Description", with: @fraispro.description
    fill_in "Facture", with: @fraispro.facture
    fill_in "Montant", with: @fraispro.montant
    fill_in "Nature", with: @fraispro.nature
    fill_in "Privepro", with: @fraispro.privepro
    fill_in "Total", with: @fraispro.total
    click_on "Create Fraispro"

    assert_text "Fraispro was successfully created"
    click_on "Back"
  end

  test "updating a Fraispro" do
    visit fraispros_url
    click_on "Edit", match: :first

    fill_in "Bank", with: @fraispro.bank
    fill_in "Compte", with: @fraispro.compte
    fill_in "Date", with: @fraispro.date
    fill_in "Deductibilite", with: @fraispro.deductibilite
    fill_in "Description", with: @fraispro.description
    fill_in "Facture", with: @fraispro.facture
    fill_in "Montant", with: @fraispro.montant
    fill_in "Nature", with: @fraispro.nature
    fill_in "Privepro", with: @fraispro.privepro
    fill_in "Total", with: @fraispro.total
    click_on "Update Fraispro"

    assert_text "Fraispro was successfully updated"
    click_on "Back"
  end

  test "destroying a Fraispro" do
    visit fraispros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fraispro was successfully destroyed"
  end
end
