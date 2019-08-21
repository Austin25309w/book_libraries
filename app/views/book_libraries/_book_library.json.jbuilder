json.extract! book_library, :id, :title, :description, :book_pages, :author, :rating, :created_at, :updated_at
json.url book_library_url(book_library, format: :json)
