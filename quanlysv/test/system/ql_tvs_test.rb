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

    fill_in "", with: @ql_tv.
    fill_in "Addr", with: @ql_tv.addr
    fill_in "Class", with: @ql_tv.class
    fill_in "Masv", with: @ql_tv.masv
    fill_in "Name", with: @ql_tv.name
    fill_in "Points", with: @ql_tv.points
    click_on "Create Ql tv"

    assert_text "Ql tv was successfully created"
    click_on "Back"
  end

  test "should update Ql tv" do
    visit ql_tv_url(@ql_tv)
    click_on "Edit this ql tv", match: :first

    fill_in "", with: @ql_tv.
    fill_in "Addr", with: @ql_tv.addr
    fill_in "Class", with: @ql_tv.class
    fill_in "Masv", with: @ql_tv.masv
    fill_in "Name", with: @ql_tv.name
    fill_in "Points", with: @ql_tv.points
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
