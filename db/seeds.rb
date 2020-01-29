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
API_KEY = Rails.application.credentials.API_KEY
API_KEY_TWO = Rails.application.credentials.API_KEY_TWO

Currency.destroy_all 
User.destroy_all 



["1", "2", "3", "4", "5", "6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"].each do |counter|

    url_first = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/info?id=#{counter}"
    headers_first = {"X-CMC_PRO_API_KEY" => API_KEY }  
    currencies_first = RestClient.get(url_first,headers_first) 
    currency_first_hash = JSON.parse(currencies_first)["data"]

    currency_first_hash.each do |coin|  
        Currency.create(
            coin_id: coin[0],
            website:coin[1]["urls"]["website"] ,  
            technical_doc:coin[1]["urls"]["technical_doc"],
            twitter:coin[1]["urls"]["twitter"],
            reddit:coin[1]["urls"]["reddit"],
            message_board: coin[1]["urls"]["message_board"],
            coin_market_cap_explorer: coin[1]["urls"]["explorer"][0],
            blockchain_info_explorer: coin[1]["urls"]["explorer"][1],
            source_code:coin[1]["urls"]["source_code"],
            logo: coin[1]["logo"],
            name:coin[1]["name"],
            symbol:coin[1]["symbol"],
            slug: coin[1]["slug"],
            description:coin[1]["description"],
            category:coin[1]["category"]   
        )  
    end 

        Currency.all.each do |coin|
            url_second = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=1'
            headers = {"X-CMC_PRO_API_KEY" => API_KEY_TWO } 
            currencies_second = RestClient.get(url_second,headers) 
            currencies_second_hash = JSON.parse(currencies_second)["data"].first
            coin.update( 
                max_supply: currencies_second_hash["max_supply"],
                circulating_supply: currencies_second_hash["circulating_supply"],
                total_supply: currencies_second_hash["total_supply"],
                price: currencies_second_hash["quote"]["USD"]["price"],
                volume: currencies_second_hash["quote"]["USD"]["volume_24h"],
                percentage_change_1h:currencies_second_hash["quote"]["USD"]["percent_change_1h"],
                percentage_change_24h:currencies_second_hash["quote"]["USD"]["percent_change_24h"],
                percentage_change_7d:currencies_second_hash["quote"]["USD"]["percent_change_7d"],
                market_cap:currencies_second_hash["quote"]["USD"]["market_cap"]
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







