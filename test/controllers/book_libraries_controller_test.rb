require 'test_helper'

class BookLibrariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_library = book_libraries(:one)
  end

  test "should get index" do
    get book_libraries_url
    assert_response :success
  end

  test "should get new" do
    get new_book_library_url
    assert_response :success
  end

  test "should create book_library" do
    assert_difference('BookLibrary.count') do
      post book_libraries_url, params: { book_library: { author: @book_library.author, book_pages: @book_library.book_pages, description: @book_library.description, rating: @book_library.rating, title: @book_library.title } }
    end

    assert_redirected_to book_library_url(BookLibrary.last)
  end

  test "should show book_library" do
    get book_library_url(@book_library)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_library_url(@book_library)
    assert_response :success
  end

  test "should update book_library" do
    patch book_library_url(@book_library), params: { book_library: { author: @book_library.author, book_pages: @book_library.book_pages, description: @book_library.description, rating: @book_library.rating, title: @book_library.title } }
    assert_redirected_to book_library_url(@book_library)
  end

  test "should destroy book_library" do
    assert_difference('BookLibrary.count', -1) do
      delete book_library_url(@book_library)
    end

    assert_redirected_to book_libraries_url
  end
end
