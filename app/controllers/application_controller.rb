class ApplicationController < ActionController::API

    def home
        greeting = ["Hello", "and", "welcome", "to", "learning", "materials", "api"]
        render json: greeting
    end

end
