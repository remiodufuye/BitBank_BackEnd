# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require_relative 'postman_response.rb' 

require 'rest-client'
coincap = ENV["COIN_MARKET_CAP_API_KEY"] 

Currency.destroy_all 
User.destroy_all 

["1", "2", "3", "4", "5", "6","7","8"].each do |counter|
    url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/info?id=#{counter}"
    headers = {"X-CMC_PRO_API_KEY" => "#{coincap}"}  
    # headers = {"X-CMC_PRO_API_KEY" => "7a2345b3-7f93-4810-8fa1-ad9a09ad6376"} 
    currencies = RestClient.get(url, headers) 
    currency_hash = JSON.parse(currencies)["data"]
    byebug
    currency_hash.each do |coin|  
        Currency.create(
            logo:coin["logo"],   
            currency_id: counter,
            name:coin["name"],  
            symbol:coin["symbol"],
            slug:coin["slug"],
            description:coin["description"]   
        )  
    end 

end



will = User.create(username: "wdrougas", profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Will.jpg')
jose = User.create(username: "jromero" , profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Jose.jpg')
trevor = User.create(username: "tjameson" , profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Trevor.jpg')
chine = User.create(username: "canikwe" , profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Chine.jpg')
sara = User.create(username: "ssmith" , profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Sara.jpg')
kyle = User.create(username: "cakehole" , profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Kyle.jpg')
jasur = User.create(username: "jabdullin" , profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Jasur.jpg')
matt = User.create(username: "mbechtel" , profile_photo: 'https://mandiokateam.com/sports-buddy/profile/MattB.jpg')
rob = User.create(username: "rheavner" , profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Matt.jpg')
ryan = User.create(username: "rsmith" , profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Ryan.jpg')
remi = User.create(username: "rremi" , profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Remi.jpg')
sebastian = User.create(username: "ssebastian", profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Sebastian.jpg')
young = User.create(username: "yhan", profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Young.jpg')







