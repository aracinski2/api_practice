require "http"

p "What city would you like to know the temperature of?"

city = gets.chomp

p "What units would you like your temperature in, Farenheit or Celcius?"
units_of_temperature = gets.chomp

if units_of_temperature == "Celcius"
  units_of_temperature = "metric"
elsif units_of_temperature== "Farenheit"
  units_of_temperature = "imperial"
end

weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{city}&units=#{units_of_temperature}&appid=#{ENV['OPEN_WEATHER_API_KEY']}").parse

temperature = weather['main']['temp']

description = weather['weather'][0]['description']

city = weather['name']

temperature_max = weather['main']['temp_max']

temperature_min = weather['main']['temp_min']

wind_speed = weather['wind']['speed']


p "In #{city}, it is a high of #{temperature_max} and a low of #{temperature_min}. It is #{description} with a wind speed of #{wind_speed}" 