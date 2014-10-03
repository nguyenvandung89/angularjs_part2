class Api::ArticlesController < ApplicationController

  def index
    render json: Article.all
  end

  def show
    render json: article
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new article_params
    @article.save
    render json: Article.all
  end

  def update
    article.update(article_params)
    render json: article
  end
  
  def destroy
    article.destroy
    render json: {message: "Article was deleted."}
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

  def article
    @article = Article.find params[:id]
  end
end
