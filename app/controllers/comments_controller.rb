class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = Comment.new comment_params
    @comment.article = @article

    if @comment.save
      redirect_to blog_path(@article)
    else
      flash[:error] = @comment.errors.full_messages.to_sentence
      render 'blog/show'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :subject, :text)
  end
end
