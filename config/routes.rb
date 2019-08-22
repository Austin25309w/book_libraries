Rails.application.routes.draw do
  devise_for :users
  root to: 'book_libraries#index'

  get 'book_libraries/index'

  get 'book_libraries/import' => 'book_libraries#my_import'

  resources :book_libraries do
    collection {post :import}
  end

end
