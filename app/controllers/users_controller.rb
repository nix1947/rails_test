class UsersController < ApplicationController


    # Use Knock to make sure the current_user is authenticated before completing request.
    # Sign in page and Sign up page do not require authentication. 
    before_action :authenticate_user,  only: [:index, :show, :update, :destroy]
   
    # GET /users 
    def index
        users = User.all 
        render json: users 
    end 


    # POST /users
    def create
        user = User.new(user_params)
        puts(user)

        if user.save
            render json: {status: 200, message: "Sign up successfully", data: user}.to_json
            # Redirection will handle frontend app
        else 
            render json: {status:200, message: "Cannot create user"}
        end
    end

    # GET /users/:id
    def show
        user = User.find(params[:id])
        render json:user 
    end 

    # Post /users/:id
    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json:{status: 200, message: "User updated", data:user}, status:ok 
        else 
            render json: {status: 200, message: "User cannot updated", data:user}, status: :ok
        end 
    end

    # DELETE /users/:id
    def destroy
        user = User.find(params[:id])

        # Destroy the user, if the currently logged in user is requested user. 
        if current_user.id.equal?user.id 
            user.destroy 
            render json: {status: 'success', message: 'User deleted successfully', data: project}, status: ok
        else 
            head 401 # Unauthorized to delete the page.     
        end 
        
       
    end

    private 
    def user_params
        params.permit(:id, :name, :email, :password, :created_at, :updated_at)
      
        
    end 

end
