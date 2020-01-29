# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require_relative 'postman_response.rb' 

require 'rest-client'
API_KEY_CRYPTOBANK = Rails.application.credentials.API_KEY_CRYPTOBANK
API_KEY_CRYPTOBANK_TWO = Rails.application.credentials.API_KEY_CRYPTOBANK_TWO 

Currency.destroy_all 


    headers = {"Apikey" => API_KEY_CRYPTOBANK }  
    url = "https://min-api.cryptocompare.com/data/top/mktcapfull?limit=100&page=1&tsym=USD&ascending=true&sign=false"
    currencies = RestClient.get(url,headers) 
    currency_hash = JSON.parse(currencies)["Data"] 
    byebug
    currency_hash.each do |coin|  
        Currency.create(
            coin_id: coin["CoinInfo"]["Id"]
            
        )  
    end 



