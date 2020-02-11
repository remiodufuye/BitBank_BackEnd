class PortfoliosController < ApplicationController

    def index
        portfolio = Portfolio.all 
        render json: portfolio.to_json(serialized_data)
    end 

    def create
        coin = Currency.find_by(coin_id: params[:currency_id])
        portfolioitem = Portfolio.create(user_id:params[:user_id] , currency_id: coin.id ,  amount: params[:amount] , 
                     value: params[:value])

                 if portfolioitem.valid? 
                 render json: {message: "Coin added to Your Portfolio!", portfolio: portfolioitem.to_json(serialized_data)}
                 else 
                 render json: {message: "Coin already added to watchlist"}
                 end
    end 
    
    private

    def serialized_data
        {:except => [:created_at , :updated_at], :include => [currency: {:except => [:created_at , :updated_at] }]}
    end 

end

