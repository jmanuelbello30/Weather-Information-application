
class WelcomeController < ApplicationController
  # index para este caso, es el que muestra la vista de temperatura máxima.
  def index
    get_countries
  end

  # temp_low para este caso, es el que muestra la vista de temperatura mínima.
  def temp_low
    get_countries
  end

  # dry_days para este caso, es el que muestra la vista de días secos .
  def dry_days
    get_countries
  end

  # rainy_days para este caso, es el que muestra la vista de días lluviosos.
  def rainy_days
    get_countries
  end

  # days_with_snow para este caso, es el que muestra la vista de días con nieve.
  def days_with_snow
    get_countries
  end

  # se guarda en una variable la respuesta de la api (@countries), para poder manejarla.
  # @countries es una variable global que tiene la respuesta del endpoint procesada.
  # se utilizó HTTParty(gema de rails), que permite hacer request.
  def get_countries
    response = HTTParty.get('https://ay61jgu2hf.execute-api.us-east-1.amazonaws.com/default/weather-api')
    @countries = JSON.parse(response.body)
  end
end
