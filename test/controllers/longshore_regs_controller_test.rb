require 'test_helper'

class LongshoreRegsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @longshore_reg = longshore_regs(:one)
  end

  test "should get index" do
    get longshore_regs_url
    assert_response :success
  end

  test "should get new" do
    get new_longshore_reg_url
    assert_response :success
  end

  test "should create longshore_reg" do
    assert_difference('LongshoreReg.count') do
      post longshore_regs_url, params: { longshore_reg: { name: @longshore_reg.name, number: @longshore_reg.number } }
    end

    assert_redirected_to longshore_reg_url(LongshoreReg.last)
  end

  test "should show longshore_reg" do
    get longshore_reg_url(@longshore_reg)
    assert_response :success
  end

  test "should get edit" do
    get edit_longshore_reg_url(@longshore_reg)
    assert_response :success
  end

  test "should update longshore_reg" do
    patch longshore_reg_url(@longshore_reg), params: { longshore_reg: { name: @longshore_reg.name, number: @longshore_reg.number } }
    assert_redirected_to longshore_reg_url(@longshore_reg)
  end

  test "should destroy longshore_reg" do
    assert_difference('LongshoreReg.count', -1) do
      delete longshore_reg_url(@longshore_reg)
    end

    assert_redirected_to longshore_regs_url
  end
end
