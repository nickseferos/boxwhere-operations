require "application_system_test_case"

class LongshoreRegsTest < ApplicationSystemTestCase
  setup do
    @longshore_reg = longshore_regs(:one)
  end

  test "visiting the index" do
    visit longshore_regs_url
    assert_selector "h1", text: "Longshore Regs"
  end

  test "creating a Longshore reg" do
    visit longshore_regs_url
    click_on "New Longshore Reg"

    fill_in "Name", with: @longshore_reg.name
    fill_in "Number", with: @longshore_reg.number
    click_on "Create Longshore reg"

    assert_text "Longshore reg was successfully created"
    click_on "Back"
  end

  test "updating a Longshore reg" do
    visit longshore_regs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @longshore_reg.name
    fill_in "Number", with: @longshore_reg.number
    click_on "Update Longshore reg"

    assert_text "Longshore reg was successfully updated"
    click_on "Back"
  end

  test "destroying a Longshore reg" do
    visit longshore_regs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Longshore reg was successfully destroyed"
  end
end
