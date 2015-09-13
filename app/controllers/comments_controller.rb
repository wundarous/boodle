class CommentsController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

  # POST /boodles
  # POST /boodles.json
  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.boodle, notice: 'Comment was successfully created.' }
      else
        format.html { redirect_to @comment.boodle, notice: 'Comment was failed to be created.' }
      end
    end
  end

  # DELETE /boodles/1
  # DELETE /boodles/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @comment.boodle, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:message, :boodle_id)
    end

end
