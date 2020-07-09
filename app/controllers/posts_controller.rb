class PostsController < ApplicationController
	before_action :authenticate_user!, only: %i[new create]

	def new
		@post = current_user.posts.build
	end

	def create
		@post = current_user.posts.build(post_params)
		if @post.save
			redirect_to new_post_path, notice: 'Post was succesfully created.'
		else 
			render 'new'
		end
	end

	private
	def post_params 
		params.require(:post).permit(:body)
	end

end
