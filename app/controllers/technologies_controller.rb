class TechnologynologiesController < ApplicationController
    before_action :set_tech, only: [:show, :update, :destroy]

    def index
        @techs = Technology.all
    end

    def show
        @tech = Technology.find(params[:id])
    end

    def new
        @tech = Technology.new
    end

    def create
        @tech = Technology.new(tech_params)
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
            @tech = Technology.find(params[:id])
        end

end
