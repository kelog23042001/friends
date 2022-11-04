require "test_helper"

class BorrowbooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @borrowbook = borrowbooks(:one)
  end

  test "should get index" do
    get borrowbooks_url
    assert_response :success
  end

  test "should get new" do
    get new_borrowbook_url
    assert_response :success
  end

  test "should create borrowbook" do
    assert_difference("Borrowbook.count") do
      post borrowbooks_url, params: { borrowbook: { maHS: @borrowbook.maHS, maSach: @borrowbook.maSach, ngayMuon: @borrowbook.ngayMuon, ngayTra: @borrowbook.ngayTra, tenHS: @borrowbook.tenHS, tenSach: @borrowbook.tenSach, tuSach: @borrowbook.tuSach } }
    end

    assert_redirected_to borrowbook_url(Borrowbook.last)
  end

  test "should show borrowbook" do
    get borrowbook_url(@borrowbook)
    assert_response :success
  end

  test "should get edit" do
    get edit_borrowbook_url(@borrowbook)
    assert_response :success
  end

  test "should update borrowbook" do
    patch borrowbook_url(@borrowbook), params: { borrowbook: { maHS: @borrowbook.maHS, maSach: @borrowbook.maSach, ngayMuon: @borrowbook.ngayMuon, ngayTra: @borrowbook.ngayTra, tenHS: @borrowbook.tenHS, tenSach: @borrowbook.tenSach, tuSach: @borrowbook.tuSach } }
    assert_redirected_to borrowbook_url(@borrowbook)
  end

  test "should destroy borrowbook" do
    assert_difference("Borrowbook.count", -1) do
      delete borrowbook_url(@borrowbook)
    end

    assert_redirected_to borrowbooks_url
  end
end
