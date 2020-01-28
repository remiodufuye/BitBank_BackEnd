class CurrenciesController < ApplicationController

    def index
        currencies = Currency.all 
        render json: currencies.to_json(serialize_data)
    end 
    
    private

    def serialize_data
        {:except => [:created_at,:updated_at]}
    end 

end
