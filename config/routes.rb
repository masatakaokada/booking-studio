Rails.application.routes.draw do
  devise_for :users

  # LetterOpenerWeb::Engineをマウントする
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  # トップページ
  root 'studios#index'

  resources :studios
end
