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
      post ql_tvs_url, params: { ql_tv: { lop: @ql_tv.lop, maHS: @ql_tv.maHS, maSach: @ql_tv.maSach, name: @ql_tv.name, ngayMuon: @ql_tv.ngayMuon, ngayTra: @ql_tv.ngayTra, soBM: @ql_tv.soBM, soNgay: @ql_tv.soNgay, stt: @ql_tv.stt, tenSach: @ql_tv.tenSach, tenTG: @ql_tv.tenTG, tuSach: @ql_tv.tuSach } }
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
    patch ql_tv_url(@ql_tv), params: { ql_tv: { lop: @ql_tv.lop, maHS: @ql_tv.maHS, maSach: @ql_tv.maSach, name: @ql_tv.name, ngayMuon: @ql_tv.ngayMuon, ngayTra: @ql_tv.ngayTra, soBM: @ql_tv.soBM, soNgay: @ql_tv.soNgay, stt: @ql_tv.stt, tenSach: @ql_tv.tenSach, tenTG: @ql_tv.tenTG, tuSach: @ql_tv.tuSach } }
    assert_redirected_to ql_tv_url(@ql_tv)
  end

  test "should destroy ql_tv" do
    assert_difference("QlTv.count", -1) do
      delete ql_tv_url(@ql_tv)
    end

    assert_redirected_to ql_tvs_url
  end
end
