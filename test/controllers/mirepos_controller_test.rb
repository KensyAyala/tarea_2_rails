require 'test_helper'

class MireposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mirepo = mirepos(:one)
  end

  test "should get index" do
    get mirepos_url
    assert_response :success
  end

  test "should get new" do
    get new_mirepo_url
    assert_response :success
  end

  test "should create mirepo" do
    assert_difference('Mirepo.count') do
      post mirepos_url, params: { mirepo: { edad: @mirepo.edad, user: @mirepo.user } }
    end

    assert_redirected_to mirepo_url(Mirepo.last)
  end

  test "should show mirepo" do
    get mirepo_url(@mirepo)
    assert_response :success
  end

  test "should get edit" do
    get edit_mirepo_url(@mirepo)
    assert_response :success
  end

  test "should update mirepo" do
    patch mirepo_url(@mirepo), params: { mirepo: { edad: @mirepo.edad, user: @mirepo.user } }
    assert_redirected_to mirepo_url(@mirepo)
  end

  test "should destroy mirepo" do
    assert_difference('Mirepo.count', -1) do
      delete mirepo_url(@mirepo)
    end

    assert_redirected_to mirepos_url
  end
end
