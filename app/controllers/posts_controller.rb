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
end
