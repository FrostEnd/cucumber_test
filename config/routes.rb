CucumberTest::Application.routes.draw do

  resources :blog_posts

  devise_for :users, :controllers => { :registrations => 'users/registrations'}

  root to: 'blog_posts#index'
  
end
