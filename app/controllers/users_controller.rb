class UsersController < ApplicationController

    def index
        users = User.all 
        render json: users.to_json(serialize_data)
    end 

    
    def show
        user = User.find(params[:id])
        render json: user.to_json(serialize_data)
    end

    def create
        # byebug
        user = User.create(username: params[:user][:username] , password: params[:user][:password])
        render json: user.to_json(serialize_data)

        if user.valid? 
            render json: {message: "New User Created", user: user.to_json(serialized_data)}
            else 
            render json: {message: "Something Went Wrong !! "}
            end
    
    end 
   
    private 

    def serialize_data
        {:except => [:created_at,:updated_at]}
    end 

  
end
