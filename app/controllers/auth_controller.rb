class AuthController < ApplicationController

    def create
        render json: User.find_by(username: params[:username])
    end

end


# render json: User.find_by(username: params[:username])


# class AuthController < ApplicationController

#     def create
#         userInstance = User.find_by(username: params[:username])
       
#         if userInstance
#             if userInstance.authenticate(params[:password])
#                 render json: userInstance , status: :accepted 
#             else 
#                 render json: {
#                     error: true , 
#                     message: "Incorrect password!"
#                 } , status: :unauthorized 
#             end 
#         else 
#             render json: {
#                 error: true , 
#                 message: "invalid username"
#             } , status: :payment_required 

#         end 
#     end

# end
