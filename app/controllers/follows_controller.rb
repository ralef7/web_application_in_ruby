class FollowsController < ApplicationController

	def create
		@follow = Follow.new
		@follow.user_id = session["user_id"]
		@follow.blog_id = params["blog_id"]
		@follow.save
		redirect_to :back, notice: "Now following #{@follow.blog.name}"
	end 

	def delete
		@follow = Follow.find_by(:id => params["id"])
		@follow.destroy
		redirect_to :back
	end
end
