Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  
  
  get 'director_search/:title' => 'movies#director_search', as: 'director_search'
end
