class PostCommentsController < ApplicationController
    
  def create
    @book = Book.find(params[:book_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.book_id = @book.id
    comment.save
    @post_comment = PostComment.new
    @user = @book.user
  end

  def destroy
    PostComment.find_by(id: params[:id], post_image_id: params[:post_image_id]).destroy
  end
  
   private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
  
end
