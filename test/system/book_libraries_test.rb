require "application_system_test_case"

class BookLibrariesTest < ApplicationSystemTestCase
  setup do
    @book_library = book_libraries(:one)
  end

  test "visiting the index" do
    visit book_libraries_url
    assert_selector "h1", text: "Book Libraries"
  end

  test "creating a Book library" do
    visit book_libraries_url
    click_on "New Book Library"

    fill_in "Author", with: @book_library.author
    fill_in "Book pages", with: @book_library.book_pages
    fill_in "Description", with: @book_library.description
    fill_in "Rating", with: @book_library.rating
    fill_in "Title", with: @book_library.title
    click_on "Create Book library"

    assert_text "Book library was successfully created"
    click_on "Back"
  end

  test "updating a Book library" do
    visit book_libraries_url
    click_on "Edit", match: :first

    fill_in "Author", with: @book_library.author
    fill_in "Book pages", with: @book_library.book_pages
    fill_in "Description", with: @book_library.description
    fill_in "Rating", with: @book_library.rating
    fill_in "Title", with: @book_library.title
    click_on "Update Book library"

    assert_text "Book library was successfully updated"
    click_on "Back"
  end

  test "destroying a Book library" do
    visit book_libraries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book library was successfully destroyed"
  end
end
