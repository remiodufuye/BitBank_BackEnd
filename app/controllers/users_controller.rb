class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users.to_json(serialize_data)
    end 

    
    def show
        user = User.find(params[:id])
        render json: user.to_json(serialize_data)
    end
   
    private 

    def serialize_data
        {:except => [:created_at,:updated_at]}
    end 
    
    # from ComicCon 
    # def serialize_data
    #     {:except => [:created_at,:updated_at],
    #         :include => {
    #             :movies => 
    #             {
    #                 :except => [:created_at, :updated_at]
    #             }
    #         }}
    # end 
  
end
