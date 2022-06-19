require "application_system_test_case"

class PioneersTest < ApplicationSystemTestCase
  setup do
    @pioneer = pioneers(:one)
  end

  test "visiting the index" do
    visit pioneers_url
    assert_selector "h1", text: "Pioneers"
  end

  test "creating a Pioneer" do
    visit pioneers_url
    click_on "New Pioneer"

    fill_in "First name", with: @pioneer.first_name
    fill_in "Last name", with: @pioneer.last_name
    click_on "Create Pioneer"

    assert_text "Pioneer was successfully created"
    click_on "Back"
  end

  test "updating a Pioneer" do
    visit pioneers_url
    click_on "Edit", match: :first

    fill_in "First name", with: @pioneer.first_name
    fill_in "Last name", with: @pioneer.last_name
    click_on "Update Pioneer"

    assert_text "Pioneer was successfully updated"
    click_on "Back"
  end

  test "destroying a Pioneer" do
    visit pioneers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pioneer was successfully destroyed"
  end
end
