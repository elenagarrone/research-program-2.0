class HomepageController < ApplicationController
    def index
        @news = News.all
    end
end
