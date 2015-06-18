module UsersHelper

def weather

client = YahooWeather::Client.new
response = client.fetch(1580373)
@weather = response
	#response.units.temperature        # "F"
#response.condition.temp           # 60
#response.wind.direction           # 110
#response.wind.direction('string') # "ESE"
#response.condition.code           # 29
#response.condition.code('string') # "Partly cloudy (night)"
end


def weather_image_url
code = weather.condition.code
prefix ="SVG/"
weather_image = {
"3"		=>	"cloud-lightning.svg",
"4"		=>	"cloud-lightning.svg",
"9"		=>	"rain.svg",
"11"	=>	"rain.svg",
"12"	=>	"rain.svg",
"20"	=>	"fog.svg",
"23"	=>	"wind.svg",
"24"	=>	"wind.svg",
"26"	=>	"cloud.svg",
"27"	=>	"cloud-moon.svg",
"28"	=>	"cloud-sun-2.svg",
"29"	=>	"cloud-moon.svg",
"30"	=>	"cloud-sun-2.svg",
"31"	=>	"moon-stars.svg",
"32"	=>	"sun.svg",
"33"	=>	"moon-stars.svg",
"34"	=>	"sun.svg",
"36"	=>	"sun.svg",
"37"	=>	"cloud-lightning.svg",
"38"	=>	"cloud-lightning.svg",
"39"	=>	"cloud-lightning.svg",
"40"	=>	"cloud-rain-2.svg",
"44"	=>	"cloud-sun-2.svg",
"45"	=>	"cloud-lightning.svg",
"47"	=>	"cloud-lightning.svg",
"3200"	=>	"error"}

@weather_image_url =prefix+weather_image["#{code}"]
end

def temp_in_C(temp)
@c=(((temp - 32)*5)/9)
end

def wind_speed
	mph=weather.wind.speed
	@Kph =mph * 1.609344 
end
end






