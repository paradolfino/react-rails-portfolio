class ProjectsController < ApplicationController
    before_action :set_tech, only: [:show, :update, :destroy]

    def index
        @techs = Tech.all
    end

    def show
        @tech = Tech.find(params[:id])
    end

    def new
        @tech = Tech.new
    end

    def create
        @tech = Tech.new(tech_params)
        if @tech.save
            redirect_to @tech
        else
            render 'new'
        end
    end

    def update
        if @tech.update(tech_params)
            redirect_to @tech
        else
            render 'edit'
        end
    end

    def destroy
        @tech.destroy
    end

    private

        def tech_params
            params.permit(:name, :created_by)
        end

        def set_tech
            @tech = Tech.find(params[:id])
        end
end
