class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    render json: @article, include: ['versions']
  end
end
