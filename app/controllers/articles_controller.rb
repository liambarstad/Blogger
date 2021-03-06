class ArticlesController < ActionController::Base
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
    @comment = Comment.new
    @comment.article_id = @article.id
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to article_path(@article)
  end

  def edit
  end

  def destroy
    @article.destroy
    flash.notice = "#{article_params[:title]} deleted"
    redirect_to articles_path
  end

  def update
    @article.update(article_params)
    flash.notice = "#{@article.title} updated"
    redirect_to article_path(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :tag_list)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
