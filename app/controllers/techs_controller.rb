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

        def word_params
            params.permit(:english, :normansk, :tense, :category_id, :slug)
        end

        def set_word
            @word = Word.friendly.find(params[:id])
        end

end
