class TechsController < ApplicationController

    def index
        @techs = Tech.all
    end

    def show
        @tech = Tech.find(params[:id])
    end

    def new

    end

    def create

    end

    def update

    end

    def destroy

    end

    private

        def tech_params
            params.permit(:name, :created_by)
        end

        def set_tech
            @tech = Tech.find(params[:id])
        end

end
