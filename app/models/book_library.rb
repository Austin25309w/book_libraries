class BookLibrary < ApplicationRecord
    require 'csv'
    require 'activerecord-import/base'
    require 'activerecord-import/active_record/adapters/postgresql_adapter'

    def self.my_import(file)
        books = []
        CSV.foreach(file.path, headers: true) do |row|
        books << BookLibrary.new(row.to_h)
        end
        BookLibrary.import books, recursive: true
    end
end
