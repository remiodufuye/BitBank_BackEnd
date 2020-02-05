class WatchitemsController < ApplicationController

    def index
        watchitem = Watchitem.all
        render json:watchitem.to_json(serialized_data)
    end 


    def create 
        watchitem = Watchitem.create(strong_params)
        if watchitem.valid? 
        render json: {message: "Coin added to watchlist!", watchitem: watchitem.to_json(serialized_data)}
         else 
        render json: { message: "Coin already added to watchlist"}
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

