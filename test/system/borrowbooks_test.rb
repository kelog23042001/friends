require "application_system_test_case"

class BorrowbooksTest < ApplicationSystemTestCase
  setup do
    @borrowbook = borrowbooks(:one)
  end

  test "visiting the index" do
    visit borrowbooks_url
    assert_selector "h1", text: "Borrowbooks"
  end

  test "should create borrowbook" do
    visit borrowbooks_url
    click_on "New borrowbook"

    fill_in "Mahs", with: @borrowbook.maHS
    fill_in "Masach", with: @borrowbook.maSach
    fill_in "Ngaymuon", with: @borrowbook.ngayMuon
    fill_in "Ngaytra", with: @borrowbook.ngayTra
    fill_in "Tenhs", with: @borrowbook.tenHS
    fill_in "Tensach", with: @borrowbook.tenSach
    fill_in "Tusach", with: @borrowbook.tuSach
    click_on "Create Borrowbook"

    assert_text "Borrowbook was successfully created"
    click_on "Back"
  end

  test "should update Borrowbook" do
    visit borrowbook_url(@borrowbook)
    click_on "Edit this borrowbook", match: :first

    fill_in "Mahs", with: @borrowbook.maHS
    fill_in "Masach", with: @borrowbook.maSach
    fill_in "Ngaymuon", with: @borrowbook.ngayMuon
    fill_in "Ngaytra", with: @borrowbook.ngayTra
    fill_in "Tenhs", with: @borrowbook.tenHS
    fill_in "Tensach", with: @borrowbook.tenSach
    fill_in "Tusach", with: @borrowbook.tuSach
    click_on "Update Borrowbook"

    assert_text "Borrowbook was successfully updated"
    click_on "Back"
  end

  test "should destroy Borrowbook" do
    visit borrowbook_url(@borrowbook)
    click_on "Destroy this borrowbook", match: :first

    assert_text "Borrowbook was successfully destroyed"
  end
end
