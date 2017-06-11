require 'test_helper'

class AutoHandelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto_handel = auto_handels(:one)
  end

  test "should get index" do
    get auto_handels_url
    assert_response :success
  end

  test "should get new" do
    get new_auto_handel_url
    assert_response :success
  end

  test "should create auto_handel" do
    assert_difference('AutoHandel.count') do
      post auto_handels_url, params: { auto_handel: { cena: @auto_handel.cena, marka: @auto_handel.marka, model: @auto_handel.model } }
    end

    assert_redirected_to auto_handel_path(AutoHandel.last)
  end

  test "should show auto_handel" do
    get auto_handel_url(@auto_handel)
    assert_response :success
  end

  test "should get edit" do
    get edit_auto_handel_url(@auto_handel)
    assert_response :success
  end

  test "should update auto_handel" do
    patch auto_handel_url(@auto_handel), params: { auto_handel: { cena: @auto_handel.cena, marka: @auto_handel.marka, model: @auto_handel.model } }
    assert_redirected_to auto_handel_path(@auto_handel)
  end

  test "should destroy auto_handel" do
    assert_difference('AutoHandel.count', -1) do
      delete auto_handel_url(@auto_handel)
    end

    assert_redirected_to auto_handels_path
  end
end
