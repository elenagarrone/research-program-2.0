class HomepageController < ApplicationController
    def index
        @news = News.all.order('created_at DESC')
    end
end
