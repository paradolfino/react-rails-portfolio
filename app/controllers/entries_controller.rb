class EntriesController < ApplicationController
    before_action :set_entry, only: [:show, :update, :destroy]

    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find(params[:id])
    end

    def new
        @entry = Entry.new
    end

    def create
        @entry = Entry.new(entry_params)
        if @entry.save
            redirect_to @entry
        else
            render 'new'
        end
    end

    def update
        if @entry.update(entry_params)
            redirect_to @entry
        else
            render 'edit'
        end
    end

    def destroy
        @entry.destroy
    end

    private

        def entry_params
            params.permit(:content, :declaration_id, :created_by)
        end

        def set_entry
            @entry = Entry.find(params[:id])
        end

end
