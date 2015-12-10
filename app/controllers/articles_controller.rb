class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new article_params

    if @article.save
      redirect_to @article, success: "Article successfully created"
    else
      flash[:error] = @article.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, success: 'Article successfully deleted'
  end

  private

  def article_params
   params.require(:article).permit(:title, :text)
  end
end
