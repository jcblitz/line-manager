Rails.application.routes.draw do
  get 'line_manager' => 'line_manager#index'
  post 'line_manager' => 'line_manager#route'

  root 'line_manager#index'
end
