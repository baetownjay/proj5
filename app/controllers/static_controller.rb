class StaticController < ApplicationController
    def home
        render json: { status: "https://zenquotes.io/api/today"}
    end
end