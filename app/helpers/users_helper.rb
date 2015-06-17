module UsersHelper

def get_weather

client = YahooWeather::Client.new
response = client.fetch(1580373)
@weather = response
	
end

def weather_image_url
if get_weather.condition.code == 26

@weather_image_url =	"svg/cloud-drizzle-moon.svg"

else 

@weather_image_url =	"svg/cloud-drizzle-sun.svg"

end
end

end
