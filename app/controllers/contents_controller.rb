class ContentsController < ApplicationController

    # before_action :authenticate_user


    # GET /contents 
def index
    contents = Content.order('created_at DESC');
    render json: contents
   
end


# Post /contents
def create
    content = Content.new(content_params)
  if content.save
    render json: {status: 200, message: "Content created", data: content}.to_json
  else
    render json: {status: 500,errors: content.errors}.to_json
  end
end 


# GET /contents/:id
def show
    content = Content.find(params[:id])
    render json: content
end


# PUT /contents/:id
def update
    content = Content.find(params[:id])
    if content.update_attributes(content_params)
        render json:{status: "success", message: "Content updated", data:content}, status:ok 
    else 
        render json: {status: 'SUCCESS', message: "Content not updated", data:content}, status: :ok
    end 
   
end 

# DELETE /contents/:id
def destroy
    content = Content.find(params[:id])
    content.destroy 
    render json: {status: 'success', message: 'content deleted successfully', data: content}, status: ok 
 
end 


private
def content_params
    params.permit(:title, :project_id, content_type)
end 

end
