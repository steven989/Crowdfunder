class CommentsController < ApplicationController

  def index
    @commentable = find_commentable
    @comments = @commentable.comments
  end


  def show
    
  end


  def new
    @comment = Comment.new
  end


  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(comment_params)
  if @comment.save
    flash[:notice] = "Successfully created comment."
    redirect_to @commentable
  else
    render :action => 'new'
  end
    
  end


  def edit
    
  end


  def update
    
  end


  def destroy
    
  end

private

  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end

  def comment_params
    params.require(:comment).permit(:comment, :project_id)
  end


end
