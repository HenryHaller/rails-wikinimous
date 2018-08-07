class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index         # GET /model
    @articles = Article.all
  end

  def show          # GET /model/:id
  end

  def new           # GET /model/new
    @article = Article.new
  end

  def create        # POST /model
    #protect your parameters!
    article = Article.create(article_params)

    redirect_to article_path(article)
  end

  def edit          # GET /model/:id/edit
     end

  def update        # PATCH /model/:id
    @article.update(article_params)

    redirect_to article_path(@article)
  end

  def destroy       # DELETE /model/:id
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
  def set_article
    @article = Article.find(params[:id])
  end
end
