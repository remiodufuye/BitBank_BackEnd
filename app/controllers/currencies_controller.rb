class CurrenciesController < ApplicationController

    def index
        currencies = Currency.all 
        render json: currencies.to_json(serialized_data)
    end 
    
    def show
        currency = Currency.find(params[:id])
        render json: currency.to_json(serialized_data)
    end

    private

    def serialized_data
        {:except => [:created_at,:updated_at]}
    end 

end
 