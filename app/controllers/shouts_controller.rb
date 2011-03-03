class ShoutsController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to root_url
  end

  def show
    @article = Article.find(params[:id])
  end
end
