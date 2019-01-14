class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end

    def create
        @article = Article.new(params.require(:article).permit(:title, :lede, :body, :author))
 
        if @article.save
            redirect_to articles_path, notice: "Article is successfully created."
        else
            render 'new'
        end
    def show
        @article = Article.find(params[:id])
    end

end

