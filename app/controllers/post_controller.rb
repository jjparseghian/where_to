class postController < ApplicationController

	before_action :set_comment, only: [:edit, :show, :destroy]

	def index
		@post = Post.new
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
	end

	def create
		 post = Post.create(post_params)
		p session[:user_id]
		redirect_to posts_path
	end

	def edit
	end

	def update
		post = Post.find(params[:id])
		if post.update_attributes post_params
			redirect_to posts_path
		else
			redirect_to :back
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end

	def search
		if params[:term] != nil
			@found = Post.where(Post.arel_table[:title].matches("%#{params[:term]}%").or(Post.arel_table[:content].matches("%#{params[:term]}%"))).order(Post.arel_table[:updated_at])
		end
	end

	def find
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :genre, :user_id) #need to add current user
	end

end