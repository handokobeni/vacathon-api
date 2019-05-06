class CategoriesController < ApplicationController
    def index
        # get current user todos
        @categories = Category.all
        # render json: {:status=>"Success", :message=>"List Categories", data: @categories}
        json_response(message: "success", data: @categories)
    end

    def create
        @category = Category.new(category_params)
        @category.save
        json_response(@category, :created)
    end

    private
    
    def category_params
        params.permit(:name)
    end
end
