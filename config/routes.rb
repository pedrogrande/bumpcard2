Bumpcard2::Application.routes.draw do
  resources :profile_pictures


  resources :logos


  resources :text_sizes


  resources :text_positions


  get "text_positions/new"

  resources :card_font_alignments


  resources :card_texts


  resources :card_font_families


  resources :card_font_colors


  resources :card_colors


  resources :card_images


  get "design/index", :id => "design"
  match "design" => "design#index"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end