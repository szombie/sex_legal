Sextantlegal::Application.routes.draw do
  root to: 'pages#home'
  match 'home'      => 'pages#home'
  match 'about'     => 'pages#about'
  match 'services'  => 'pages#services'
  match 'clients'   => 'pages#clients'
  match 'contact'   => 'pages#contact'
end