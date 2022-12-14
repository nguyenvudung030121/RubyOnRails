require "test_helper"

class QlTvsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ql_tv = ql_tvs(:one)
  end

  test "should get index" do
    get ql_tvs_url
    assert_response :success
  end

  test "should get new" do
    get new_ql_tv_url
    assert_response :success
  end

  test "should create ql_tv" do
    assert_difference("QlTv.count") do
      post ql_tvs_url, params: { ql_tv: { : @ql_tv., addr: @ql_tv.addr, class: @ql_tv.class, masv: @ql_tv.masv, name: @ql_tv.name, points: @ql_tv.points } }
    end

    assert_redirected_to ql_tv_url(QlTv.last)
  end

  test "should show ql_tv" do
    get ql_tv_url(@ql_tv)
    assert_response :success
  end

  test "should get edit" do
    get edit_ql_tv_url(@ql_tv)
    assert_response :success
  end

  test "should update ql_tv" do
    patch ql_tv_url(@ql_tv), params: { ql_tv: { : @ql_tv., addr: @ql_tv.addr, class: @ql_tv.class, masv: @ql_tv.masv, name: @ql_tv.name, points: @ql_tv.points } }
    assert_redirected_to ql_tv_url(@ql_tv)
  end

  test "should destroy ql_tv" do
    assert_difference("QlTv.count", -1) do
      delete ql_tv_url(@ql_tv)
    end

    assert_redirected_to ql_tvs_url
  end
end
