require "application_system_test_case"

class BankDetailsTest < ApplicationSystemTestCase
  setup do
    @bank_detail = bank_details(:one)
  end

  test "visiting the index" do
    visit bank_details_url
    assert_selector "h1", text: "Bank Details"
  end

  test "creating a Bank detail" do
    visit bank_details_url
    click_on "New Bank Detail"

    fill_in "Account number", with: @bank_detail.account_number
    fill_in "Bsb", with: @bank_detail.bsb
    click_on "Create Bank detail"

    assert_text "Bank detail was successfully created"
    click_on "Back"
  end

  test "updating a Bank detail" do
    visit bank_details_url
    click_on "Edit", match: :first

    fill_in "Account number", with: @bank_detail.account_number
    fill_in "Bsb", with: @bank_detail.bsb
    click_on "Update Bank detail"

    assert_text "Bank detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Bank detail" do
    visit bank_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bank detail was successfully destroyed"
  end
end
