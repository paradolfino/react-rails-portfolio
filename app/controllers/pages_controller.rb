class PagesController < ApplicationController

    def home
        @declarations = Declaration.all
    end

    def contact ;end
end
