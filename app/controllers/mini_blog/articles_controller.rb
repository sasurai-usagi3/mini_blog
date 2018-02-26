require_dependency 'mini_blog/application_controller'

module MiniBlog
  class ArticlesController < ApplicationController
    before_action :authenticate_user!, except: :index

    def index
      @articles = Article.page(params[:page]).per(10)
    end

    def show
      @article = Article.find(params[:id])
    end

    def new
      @article = Article.new
    end

    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to root_path
      else
        render 'new'
      end
    end

    def edit
      @article = Article.find(params[:id])
    end

    def update
      @article = Article.find(params[:id])

      if @article.update(article_params)
        redirect_to root_path
      else
        render 'edit'
      end
    end

    def destroy
      article = Article.find(params[:id])

      article.destroy

      head :accepted
    end

  private
    def article_params
      params.require(:article).permit(:title, :body).merge(tags: params[:article][:tags].split(/;\s*/).map { |tag| MiniBlog::Tag.find_or_initialize_by(name: tag) })
    end
  end
end
