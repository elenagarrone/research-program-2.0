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
        redirect_to news_index_path
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
        redirect_to news_index_path
    end

    def destroy
        @news = News.find(params[:id])
        @news.destroy
        if @news.destroyed?
            flash[:notice] = 'News deleted successfully.'
        else
            flash[:alert] = 'Something went wrong while deleting the news. Try again.'
        end
        redirect_to news_index_path
    end

    def news_params
        params.require(:news).permit(
            :description,
            :description_it,
            :description_de,
            :description_da,
            :description_es,
            :description_el,
            :description_hu
        )
    end
end
