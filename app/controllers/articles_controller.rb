class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to root_url, :notice => 'The article has been created.'
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end
end
