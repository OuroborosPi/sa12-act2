require 'httparty'

url = "http://worldtimeapi.org/api/Europe/London"
response = HTTParty.get(url)
time_data = response.parsed_response

current_time = Time.parse(time_data['datetime'])
formatted_time = current_time.strftime("%Y-%m-%d %H:%M:%S")

puts "The current time in #{timezone} is #{formatted_time}."
