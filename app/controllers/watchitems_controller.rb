class WatchitemsController < ApplicationController

    def index
        watchitem = Watchitem.all
        render json:watchitem.to_json(serialized_data)
    end 


    def create 
        
        coin = Currency.find_by(coin_id: params[:currency_id])
        watchitem = Watchitem.create(user_id:params[:user_id] , currency_id: coin.id)
    
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

    # def serialized_data
    #     {:except => [:created_at , :updated_at], :include => [currency: {:only => [:coin_id] }]}
    # end  

    def serialized_data
        {:except => [:created_at , :updated_at], :include => [currency: {:except => [:created_at , :updated_at] }]}
    end 



end

