class Cms::ArticlesController < ApplicationController

  def new
    @article = Article.new
  end
 
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path, notice: "Article is successfully created."
    else
      render 'new'
    end
  end
 
  private

  def article_params
    params.require(:article).permit(:title, :lede, :body, :author)
  end

end