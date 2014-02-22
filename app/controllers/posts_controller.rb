class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  # GET /posts.js
  def index
    @posts = Post.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
      format.js
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:post).permit(:title)
    end
end
