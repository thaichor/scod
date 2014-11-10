class ArticlesController < ApplicationController

  before_action :authenticate_user!,    only: [:new, :create, :edit, :update, :delete]
  before_action :set_user_new_article,  only: [:new, :create]
  before_action :set_user_article,      only: [:edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
  end

  def create
    @article.assign_attributes(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
  end

  def update
    @article.assign_attributes(article_params)
    if @article.save
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article.destroy!

    redirect_to articles_url
  end

  private
    def article_params
      @article_params ||= params.require(:article).permit(:title, :content)
    end

    def set_user_article
      @article = current_user.articles.find(params[:id])
      authorize! :update, @articles
    end

    def set_user_new_article
      @article = current_user.articles.build
      authorize! :create, @article
    end
end
