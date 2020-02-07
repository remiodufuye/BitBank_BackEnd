class WatchitemsController < ApplicationController

    def index
        watchitem = Watchitem.all
        render json:watchitem.to_json(serialized_data)
    end 


    def create 
        # currency = Currency.find_by(coin_id: 5)
        # currency = Currency.find_by(params[:coin_id])
        watchitem = Watchitem.create(strong_params)
        # debugger
        if watchitem.valid? 
        render json: {message: "Coin added to watchlist!", watchitem: watchitem.to_json(serialized_data)}
         else 
        render json: {message: "Coin already added to watchlist"}
         end
    end  


    private 

    def strong_params
        params.require(:watchitem).permit(:user_id , :currency_id)
    end 

    def serialized_data
        {:except => [:created_at , :updated_at]}
    end 

end

