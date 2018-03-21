class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :update, :destroy]

    def index
        @projects = Project.all
    end

    def show
        @project = Project.find(params[:id])
    end

    def new
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        if @project.save
            redirect_to @project
        else
            render 'new'
        end
    end

    def update
        if @project.update(project_params)
            redirect_to @project
        else
            render 'edit'
        end
    end

    def destroy
        @project.destroy
    end

    private

        def project_params
            params.permit(:title, :desc, :created_by)
        end

        def set_project
            @project = Project.find(params[:id])
        end
end
