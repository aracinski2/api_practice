require "http"

pass = HTTP.get("https://data.ny.gov/resource/y59h-w6v4.json").parse

p pass[0]['company']