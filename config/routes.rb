Rails.application.routes.draw do
  # se definen las rutas de navegación de la aplicación.
  get 'welcome/index'
  get 'temp_low', to: 'welcome#temp_low'
  get 'dry_days', to: 'welcome#dry_days'
  get 'rainy_days', to: 'welcome#rainy_days'
  get 'snow_days', to: 'welcome#days_with_snow'

  root 'welcome#index'
end
