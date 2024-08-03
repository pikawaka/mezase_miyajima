Rails.application.routes.draw do
  root 'paths#edit'
  patch 'update' => 'paths#update'
end
