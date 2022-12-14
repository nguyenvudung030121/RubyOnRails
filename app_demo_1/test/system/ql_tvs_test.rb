require "application_system_test_case"

class QlTvsTest < ApplicationSystemTestCase
  setup do
    @ql_tv = ql_tvs(:one)
  end

  test "visiting the index" do
    visit ql_tvs_url
    assert_selector "h1", text: "Ql tvs"
  end

  test "should create ql tv" do
    visit ql_tvs_url
    click_on "New ql tv"

    fill_in "Lop", with: @ql_tv.lop
    fill_in "Mahs", with: @ql_tv.maHS
    fill_in "Masach", with: @ql_tv.maSach
    fill_in "Name", with: @ql_tv.name
    fill_in "Ngaymuon", with: @ql_tv.ngayMuon
    fill_in "Ngaytra", with: @ql_tv.ngayTra
    fill_in "Sobm", with: @ql_tv.soBM
    fill_in "Songay", with: @ql_tv.soNgay
    fill_in "Stt", with: @ql_tv.stt
    fill_in "Tensach", with: @ql_tv.tenSach
    fill_in "Tentg", with: @ql_tv.tenTG
    fill_in "Tusach", with: @ql_tv.tuSach
    click_on "Create Ql tv"

    assert_text "Ql tv was successfully created"
    click_on "Back"
  end

  test "should update Ql tv" do
    visit ql_tv_url(@ql_tv)
    click_on "Edit this ql tv", match: :first

    fill_in "Lop", with: @ql_tv.lop
    fill_in "Mahs", with: @ql_tv.maHS
    fill_in "Masach", with: @ql_tv.maSach
    fill_in "Name", with: @ql_tv.name
    fill_in "Ngaymuon", with: @ql_tv.ngayMuon
    fill_in "Ngaytra", with: @ql_tv.ngayTra
    fill_in "Sobm", with: @ql_tv.soBM
    fill_in "Songay", with: @ql_tv.soNgay
    fill_in "Stt", with: @ql_tv.stt
    fill_in "Tensach", with: @ql_tv.tenSach
    fill_in "Tentg", with: @ql_tv.tenTG
    fill_in "Tusach", with: @ql_tv.tuSach
    click_on "Update Ql tv"

    assert_text "Ql tv was successfully updated"
    click_on "Back"
  end

  test "should destroy Ql tv" do
    visit ql_tv_url(@ql_tv)
    click_on "Destroy this ql tv", match: :first

    assert_text "Ql tv was successfully destroyed"
  end
end
