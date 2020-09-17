Rails.application.routes.draw do
  scope "(:locale)", locale: /en/ do
    root "static_pages#home"

    get "/help", to: "static_pages#help"
    get "/contact", to: "static_pages#contact"
    get "/signup", to: "users#new"
    resources :users
  end
end
