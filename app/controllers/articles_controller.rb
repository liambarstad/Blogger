class ArticlesController < ActionController::Base
  def index
    @article = Article.all
  end
end
