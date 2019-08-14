require 'test_helper'

class SteamshipLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @steamship_line = steamship_lines(:one)
  end

  test "should get index" do
    get steamship_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_steamship_line_url
    assert_response :success
  end

  test "should create steamship_line" do
    assert_difference('SteamshipLine.count') do
      post steamship_lines_url, params: { steamship_line: { name: @steamship_line.name } }
    end

    assert_redirected_to steamship_line_url(SteamshipLine.last)
  end

  test "should show steamship_line" do
    get steamship_line_url(@steamship_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_steamship_line_url(@steamship_line)
    assert_response :success
  end

  test "should update steamship_line" do
    patch steamship_line_url(@steamship_line), params: { steamship_line: { name: @steamship_line.name } }
    assert_redirected_to steamship_line_url(@steamship_line)
  end

  test "should destroy steamship_line" do
    assert_difference('SteamshipLine.count', -1) do
      delete steamship_line_url(@steamship_line)
    end

    assert_redirected_to steamship_lines_url
  end
end
