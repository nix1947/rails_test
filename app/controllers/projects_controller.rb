class ProjectsController < ApplicationController

    before_action :authenticate_user


    # GET /projects 
    def index
        projects = Project.order('created_at DESC')
        render json: projects
       
    end


    # Post /projects
    # def create
    #     project = Project.new(project_params)

    #     # Set project ownership to currently logged in users. 
    #     project.user_id = current_user.id

    #     if project.save
    #         render json: {status: 200, message: "Project created", data: project}.to_json
    #     else
    #         render json: {status: 500,errors: project.errors}.to_json
    #     end
    # end 


    # GET /projects/:id
    # def show
    #     # All users can query all projects read only
    #     project = Project.find(params[:id])
    #     render json: project
    # end


    # PUT /projects/:id
    # def update
    #     # Only project owner can update project 
    #     project = Project.find(params[:id])
    #     project.user_id = current_user.id 

    #     if current_user.id.equals?project.user_id
    #         if project.update_attributes(project_params)
    #             render json:{status: "success", message: "Project updated", data:project}, status:ok 
    #         else 
    #             render json: {status: 'SUCCESS', message: "Project not updated", data:project}, status: :ok
    #         end 
    #     else
    #         render json: {status: 403, message: "Permission Denited"}, status: :ok
    # end 

    # DELETE /projects/:id
    # def destroy
    #     project = Project.find(params[:id])
    #     # Project owner can only delete the project
    #     if current_user.id.equals?project.user_id
    #         project.destroy 
    #         render json: {status: 200, message: 'project deleted successfully', data: project}, status: ok 
    #     else
    #         render json: {status: 200, message: 'Project not found'}
    #     end
     
    # end 


    # private
    # def project_params
    #     params.permit(:title, :description, :thumbnail)
        
    # end 
end
