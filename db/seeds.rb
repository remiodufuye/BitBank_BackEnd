# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

coincap = ENV["COIN_MARKET_CAP_API_KEY"] 

url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/info?id=1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18'

currencies = RestClient.get(url, headers={X-CMC_PRO_API_KEY => coincap})
currency_array = JSON.parse(currencies)["results"]

currency_array.each do |coin| 
    debugger
    Currency.create(
        logo:coin["logo"],
        currency_id:coin["id"],
        name:coin["name"],
        symbol:coin["symbol"],
        slug:coin["slug"],
        description:coin["description"]
    )
end 



