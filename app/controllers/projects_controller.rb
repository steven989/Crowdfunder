class ProjectsController < ApplicationController

    before_filter :require_login, except: [:index, :show]

    def index


        if params[:category] && params[:category] != "" && params[:tag]
            
            @projects = Project.tagged_with(params[:tag]).where(category_id: params[:category]).order('created_at DESC').page(params[:page])

        elsif params[:category] && params[:category] != "" && !(params[:tag])

            @projects = Project.where(category_id: params[:category]).order('created_at DESC').page(params[:page])

        elsif !(params[:category] && params[:category] != "") && params[:tag]

            @projects = Project.tagged_with(params[:tag]).order('created_at DESC').page(params[:page])

        else 
            
            @projects = Project.all.order('created_at DESC').page(params[:page])

        end

        @categories = Category.all

        respond_to do |format|
            format.html
            format.js
        end 

    end 


    def show

        @project = Project.find_by(id: params[:id])
        @tier = @project.tiers

    end 
    

    def new

        @project = Project.new

    end 


    def create

        params[:project][:user_id] = current_user.id

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


    def add_tag

        @project = Project.find_by(id: params[:id])

        @project.tag_list.add(params[:tag_list], parse: true)
        @project.save

        redirect_to project_path(@project)

    end



    def destroy

        @project = Project.find_by(id: params[:id])

        @project.destroy

    end 

    private

    def project_params

        params.require(:project).permit(:title,:description,:start_date,:end_date,:goal,:tag_list,:category_id,:user_id)

    end 

end
