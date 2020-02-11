class PortfoliosController < ApplicationController

    def index
        portfolio = Portfolio.all 
        render json: portfolio.to_json(serialized_data)
    end 

    private

    def serialized_data
        {:except => [:created_at,:updated_at]}
    end 


 
end


