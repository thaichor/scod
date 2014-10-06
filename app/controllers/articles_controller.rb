class ArticlesController < ApplicationController

  # load_and_authorize_resource

  def index
    @articles = Article.all
    authorize! :index, @articles
  end

  def new
    @article = Article.new
    authorize! :new, @article
  end

  def create
    @article = current_user.articles.build article_params
    authorize! :create, @article

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
    authorize! :show, @articles
  end

  def edit
    @article = Article.find(params[:id])
    authorize! :show, @articles
  end

  def update
    @article = current_user.articles.find params[:id]
    authorize! :show, @articles

    if @article.update_attributes(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def delete
    @article = Article.find(params[:id])
    authorize! :show, @articles
    @article.destroy

    redirect_to articles_url
  end

  private
    def article_params
      @article_params ||= params.require(:article).permit(:title, :content)
    end
end
