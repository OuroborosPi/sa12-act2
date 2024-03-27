require 'httparty'

response = HTTParty.get("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd")
cryptos = response.parsed_response
top_5_cryptos = cryptos.sort_by { |crypto| -crypto['market_cap'] }.take(5)

puts "Top 5 Cryptocurrencies by Market Capitalization:"
top_5_cryptos.each do |crypto|
  puts "#{crypto['name']}: $#{crypto['current_price']} (Market Cap: $#{crypto['market_cap']})"
end
