class PagesController < ApplicationController

    def home

    end

    def projects
        @projects = Project.all
        @technologies = Technology.all
    end

    def contact

    end
end
