class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(comment_params)
    if current_user
      @comment.commenter = current_user
    end
    @comment.save
    redirect_to article_path(@article)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end

