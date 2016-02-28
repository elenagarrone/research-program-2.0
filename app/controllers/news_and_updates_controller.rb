class NewsAndUpdatesController < ApplicationController
    def index
      @news = News.all
    end

    def new
        @news = News.new
    end

    def create
        News.create(news_params)
        redirect_to '/news'
    end

    def edit
        @news = News.find(params[:id])
    end

    def update
        @news = News.find(params[:id])
        @news.update(news_params)
        redirect_to '/news'
    end

    def destroy
        @news = News.find(params[:id])
        @news.destroy
        flash[:notice] = 'News deleted successfully'
        redirect_to '/news'
    end

    def news_params
        params.require(:news).permit(:description)
    end
end
