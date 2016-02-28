class NewsAndUpdatesController < ApplicationController
    def index
      @news = News.all
    end

    def new
        @news = News.new
    end

    def create
        @news = News.create(news_params)
        if @news.save
            flash[:notice] = 'News created successfully.'
        else
            flash[:alert] = 'Something went wrong while creating the news. Try again.'
        end
        redirect_to '/news'
    end

    def edit
        @news = News.find(params[:id])
    end

    def update
        @news = News.find(params[:id])
        @news.update(news_params)
        if @news.save
            flash[:notice] = 'News updated successfully.'
        else
            flash[:alert] = 'Something went wrong while updating the news. Try again.'
        end
        redirect_to '/news'
    end

    def destroy
        @news = News.find(params[:id])
        @news.destroy
        if @gallery.destroyed?
            flash[:notice] = 'News deleted successfully.'
        else
            flash[:alert] = 'Something went wrong while deleting the news. Try again.'
        end
        redirect_to '/news'
    end

    def news_params
        params.require(:news).permit(:description)
    end
end
