require "http"

p "What city would you like to know the temperature of?"

answer = gets.chomp

weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=#{answer}&units=imperial&appid=#{ENV['OPEN_WEATHER_API_KEY']}").parse

temperature = weather['main']['temp']

p "In #{answer}, it is #{temperature}."