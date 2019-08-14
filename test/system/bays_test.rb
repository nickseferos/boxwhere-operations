require "application_system_test_case"

class BaysTest < ApplicationSystemTestCase
  setup do
    @bay = bays(:one)
  end

  test "visiting the index" do
    visit bays_url
    assert_selector "h1", text: "Bays"
  end

  test "creating a Bay" do
    visit bays_url
    click_on "New Bay"

    fill_in "Bay cells", with: @bay.bay_cells
    fill_in "Bay height", with: @bay.bay_height
    fill_in "Bay size", with: @bay.bay_size
    fill_in "Bay total container number", with: @bay.bay_total_container_number
    fill_in "Number", with: @bay.number
    click_on "Create Bay"

    assert_text "Bay was successfully created"
    click_on "Back"
  end

  test "updating a Bay" do
    visit bays_url
    click_on "Edit", match: :first

    fill_in "Bay cells", with: @bay.bay_cells
    fill_in "Bay height", with: @bay.bay_height
    fill_in "Bay size", with: @bay.bay_size
    fill_in "Bay total container number", with: @bay.bay_total_container_number
    fill_in "Number", with: @bay.number
    click_on "Update Bay"

    assert_text "Bay was successfully updated"
    click_on "Back"
  end

  test "destroying a Bay" do
    visit bays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bay was successfully destroyed"
  end
end
