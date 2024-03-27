require 'httparty'

response = HTTParty.get('https://api.github.com/users/OuroborosPi/repos')
repos = response.parsed_response
most_starred_repo = repos.max_by { |repo| repo['stargazers_count'] } # maximum element in a collection
puts "Most Starred Repository:"
puts "Name: #{most_starred_repo['name']}"
puts "Description: #{most_starred_repo['description']}"
puts "Stars: #{most_starred_repo['stargazers_count']}"
puts "URL: #{most_starred_repo['html_url']}"
