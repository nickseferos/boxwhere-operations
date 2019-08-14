require "application_system_test_case"

class SteamshipLinesTest < ApplicationSystemTestCase
  setup do
    @steamship_line = steamship_lines(:one)
  end

  test "visiting the index" do
    visit steamship_lines_url
    assert_selector "h1", text: "Steamship Lines"
  end

  test "creating a Steamship line" do
    visit steamship_lines_url
    click_on "New Steamship Line"

    fill_in "Name", with: @steamship_line.name
    click_on "Create Steamship line"

    assert_text "Steamship line was successfully created"
    click_on "Back"
  end

  test "updating a Steamship line" do
    visit steamship_lines_url
    click_on "Edit", match: :first

    fill_in "Name", with: @steamship_line.name
    click_on "Update Steamship line"

    assert_text "Steamship line was successfully updated"
    click_on "Back"
  end

  test "destroying a Steamship line" do
    visit steamship_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Steamship line was successfully destroyed"
  end
end
