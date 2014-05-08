class ProjectsController < ApplicationController

    before_filter :require_login, except: [:index, :show]

    def index

        @projects = Project.all

    end 

    def show

        @project = Project.find_by(id: params[:id])
        @tier = @project.tiers

    end 
    
    def new

        @project = Project.new

    end 

    def create

        @project = Project.new(project_params)

        if @project.save

            params[:project][:tiers_attributes].each { |key, value|

                Tier.create(project_id: @project.id, amount: value[:amount], rewards: value[:rewards])

            }
            
            redirect_to project_path(@project)

        else 
            render :new
        end 




    end 

    def edit

        @project = Project.find_by(id: params[:id])

    end 


    def update

        @project = Project.find_by(id: params[:id])

        @project.update_attributes(project_params) 

        if @project.save
            redirect_to project_path(@project)
        else 
            render :edit
        end 

    end 

    def destroy

        @project = Project.find_by(id: params[:id])

        @project.destroy

    end 

    private

    def project_params

        params.require(:project).permit(:title,:description,:start_date,:end_date,:goal,:category_id)

    end 

end
