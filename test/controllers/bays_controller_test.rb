require 'test_helper'

class BaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bay = bays(:one)
  end

  test "should get index" do
    get bays_url
    assert_response :success
  end

  test "should get new" do
    get new_bay_url
    assert_response :success
  end

  test "should create bay" do
    assert_difference('Bay.count') do
      post bays_url, params: { bay: { bay_cells: @bay.bay_cells, bay_height: @bay.bay_height, bay_size: @bay.bay_size, bay_total_container_number: @bay.bay_total_container_number, number: @bay.number } }
    end

    assert_redirected_to bay_url(Bay.last)
  end

  test "should show bay" do
    get bay_url(@bay)
    assert_response :success
  end

  test "should get edit" do
    get edit_bay_url(@bay)
    assert_response :success
  end

  test "should update bay" do
    patch bay_url(@bay), params: { bay: { bay_cells: @bay.bay_cells, bay_height: @bay.bay_height, bay_size: @bay.bay_size, bay_total_container_number: @bay.bay_total_container_number, number: @bay.number } }
    assert_redirected_to bay_url(@bay)
  end

  test "should destroy bay" do
    assert_difference('Bay.count', -1) do
      delete bay_url(@bay)
    end

    assert_redirected_to bays_url
  end
end
