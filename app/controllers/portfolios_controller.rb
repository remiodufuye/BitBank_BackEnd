class PortfoliosController < ApplicationController

    before_action :get_currency ,only:[:update]

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
                 render json: {message: "Something Went Wrong !! "}
                 end
                 
    end 


    def update
     
        coin = Currency.find_by(coin_id: params[:currency_id]) 
        # newPortfolioItem = Portfolio.update( amount: params[:amount] , value: params[:value])
        newPortfolioItem = coin.update( amount: params[:amount] , value: params[:value])

        if newPortfolioItem.valid? 
            render json: {message: "Portfolio Updated!!", portfolio: newPortfolioItem.to_json(serialized_data)}
            else 
            render json: {message: "Something Went Wrong !! "}
            end

    end

    
    private
    
    def get_currency
        @curency = Currency.find(params[:id])
    end 

    def serialized_data
        {:except => [:created_at , :updated_at], :include => [currency: {:except => [:created_at , :updated_at] }]}
    end 

    def strong_params
        params.require(:portfolio).permit(:user_id , :currency_id , :amount , :value )  
    end

end


# def update
#     @course = @review.course
#     @review.update(strong_params)
#     if @review.valid?
#         redirect_to user_path(@review.user)
#     else
#         render :edit
#     end
# end
