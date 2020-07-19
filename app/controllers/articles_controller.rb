class ArticlesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    @article = Article.find(params[:id])
    render json: @article, include: ['versions']
  end

  def create
    puts "params:: #{params[:article]}"
    puts "attr: #{article_attributes}"
    @article = Article.new(article_attributes)
    @article.save
  end

private
  def article_attributes
    puts "called attr"
    params.require(:article).permit(:title, {versions_attributes: [:version_number] })
  end
end
