class ArticlesController < ApplicationController
  before_action :load_article, only: :show

  def index
    @featured_article = Article.featured.limit(1).first
    @articles = Article.search(params[:search]).
      paginate(page: params[:page], per_page: 5)
  end

  def show
  end
end
