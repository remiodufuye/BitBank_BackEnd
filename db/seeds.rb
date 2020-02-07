require 'rest-client'


# use either API_KEY or API_KEY_TWO

# def make_currency_entries
# api_key = Rails.application.credentials.API_KEY
# number_of_coins_desired = 100
# requests_in_minute_counter = 0
# (700..800).each do |counter|
#     url_first = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/info?id=#{counter.to_s}"
#     headers_first = {"X-CMC_PRO_API_KEY" => api_key }  
#     if requests_in_minute_counter >= 29
#         sleep(60)
#         requests_in_minute_counter = 0
#     end
#     currencies_first = RestClient.get(url_first,headers_first) 
#     requests_in_minute_counter += 1
#     currency_first_hash = JSON.parse(currencies_first)["data"]

#     currency_first_hash.each do |coin|  
#         Currency.create(
#             coin_id: coin[0],
#             website:coin[1]["urls"]["website"] ,  
#             technical_doc:coin[1]["urls"]["technical_doc"],
#             twitter:coin[1]["urls"]["twitter"],
#             reddit:coin[1]["urls"]["reddit"],
#             message_board: coin[1]["urls"]["message_board"],
#             coin_market_cap_explorer: coin[1]["urls"]["explorer"][0],
#             blockchain_info_explorer: coin[1]["urls"]["explorer"][1],
#             source_code:coin[1]["urls"]["source_code"],
#             logo: coin[1]["logo"],
#             name:coin[1]["name"],
#             symbol:coin[1]["symbol"],
#             slug: coin[1]["slug"],
#             description:coin[1]["description"],
#             category:coin[1]["category"]   
#         )
#     end 
# end
# end

# make_currency_entries


# def update_currency_entries
#     api_key = Rails.application.credentials.API_KEY
#     url_second = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=5000'
#     headers = {"X-CMC_PRO_API_KEY" => api_key }    
#     currencies_second = RestClient.get(url_second,headers) 
#     currencies_second_array = JSON.parse(currencies_second)["data"]
#     currencies_second_array.each do |coin|
#     coin_match = Currency.find_by(coin_id: coin["id"])     
#         if coin_match
#             coin_match.update( 
#                 max_supply: coin["max_supply"],
#                 circulating_supply: coin["circulating_supply"],
#                 total_supply: coin["total_supply"],
#                 price: coin["quote"]["USD"]["price"],
#                 volume: coin["quote"]["USD"]["volume_24h"],
#                 percentage_change_1h:coin["quote"]["USD"]["percent_change_1h"],
#                 percentage_change_24h:coin["quote"]["USD"]["percent_change_24h"],
#                 percentage_change_7d:coin["quote"]["USD"]["percent_change_7d"],
#                 market_cap:coin["quote"]["USD"]["market_cap"]
#             ) 
#         end
#     end
# end

# update_currency_entries


# to get specific Crypto , in this case Ethereum = 1027 
# https://pro-api.coinmarketcap.com/v1/cryptocurrency/info?id=1027

# OR USE SYMBOL , EXAMPLE BELOW FOR RIPPLE
# https://pro-api.coinmarketcap.com/v1/cryptocurrency/info?symbol=IOTA

# def create_single_crypto 
# api_key = Rails.application.credentials.API_KEY_TWO
# url = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/info?symbol=USDT"
# headers = {"X-CMC_PRO_API_KEY" => api_key }  
# currencies = RestClient.get(url,headers) 
# currency_hash = JSON.parse(currencies)["data"]
# currency_hash.each do |coin|  
#         Currency.create(
#             coin_id: coin[0],
#             website:coin[1]["urls"]["website"] ,  
#             technical_doc:coin[1]["urls"]["technical_doc"],
#             twitter:coin[1]["urls"]["twitter"],
#             reddit:coin[1]["urls"]["reddit"],
#             message_board: coin[1]["urls"]["message_board"],
#             coin_market_cap_explorer: coin[1]["urls"]["explorer"][0],
#             blockchain_info_explorer: coin[1]["urls"]["explorer"][1],
#             source_code:coin[1]["urls"]["source_code"],
#             logo: coin[1]["logo"],
#             name:coin[1]["name"],
#             symbol:coin[1]["symbol"],
#             slug: coin[1]["slug"],
#             description:coin[1]["description"],
#             category:coin[1]["category"]   
#         )
#     end 
# end 

# create_single_crypto


# def update_single_crypto
#     api_key = Rails.application.credentials.API_KEY_TWO
#     url_second = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=5000'
#     headers = {"X-CMC_PRO_API_KEY" => api_key }    
#     currencies_single = RestClient.get(url_second,headers) 
#     currencies_single_array = JSON.parse(currencies_single)["data"]
#     currencies_single_array.each do |coin|
#     coin_match = Currency.find_by(coin_id: coin["id"])     
#         if coin_match
#             coin_match.update( 
#                 max_supply: coin["max_supply"],
#                 circulating_supply: coin["circulating_supply"],
#                 total_supply: coin["total_supply"],
#                 price: coin["quote"]["USD"]["price"],
#                 volume: coin["quote"]["USD"]["volume_24h"],
#                 percentage_change_1h:coin["quote"]["USD"]["percent_change_1h"],
#                 percentage_change_24h:coin["quote"]["USD"]["percent_change_24h"],
#                 percentage_change_7d:coin["quote"]["USD"]["percent_change_7d"],
#                 market_cap:coin["quote"]["USD"]["market_cap"]
#             ) 
#         end
#     end
# end

# update_single_crypto


# User.destroy_all 

# will = User.create(username: "wdrougas", password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Will.jpg')
# jose = User.create(username: "jromero" , password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Jose.jpg')
# trevor = User.create(username: "tjameson" , password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Trevor.jpg')
# chine = User.create(username: "canikwe" , password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Chine.jpg')
# sara = User.create(username: "ssmith" , password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Sara.jpg')
# kyle = User.create(username: "cakehole" , password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Kyle.jpg')
# jasur = User.create(username: "jabdullin" , password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Jasur.jpg')
# matt = User.create(username: "mbechtel" , password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/MattB.jpg')
# rob = User.create(username: "rheavner" , password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Matt.jpg')
# ryan = User.create(username: "rsmith" , password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Ryan.jpg')
# remi = User.create(username: "rremi" , password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Remi.jpg')
# sebastian = User.create(username: "ssebastian", password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Sebastian.jpg')
# young = User.create(username: "yhan", password: "password",
# profile_photo: 'https://mandiokateam.com/sports-buddy/profile/Young.jpg')

# User.destroy_all 

# will = User.create(username: "wdrougas")
# jose = User.create(username: "jromero")
# trevor = User.create(username: "tjameson")
# chine = User.create(username: "canikwe")
# sara = User.create(username: "ssmith")
# kyle = User.create(username: "cakehole")
# jasur = User.create(username: "jabdullin")
# matt = User.create(username: "mbechtel")
# rob = User.create(username: "rheavner")
# ryan = User.create(username: "rsmith")
# remi = User.create(username: "rremi")
# sebastian = User.create(username: "ssebastian")
# young = User.create(username: "yhan") 


# Watchitem.destroy_all ; 
