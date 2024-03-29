class SearchesController < ApplicationController
    before_action :authenticate_user!
    
    def search
        @model = params[:model]
        @word =  params[:word]
        @method = params[:method]
         
        if @model == "User"
            @records = User.search_for(@method, @word)
        else
            @records = Book.search_for(@method, @word)
        end
    end
end
