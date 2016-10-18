class UpvotesController < ApplicationController
    before_action :authenticate_user!
    
    def create
        @post = Post.find(params[:post_id])
        @post.liked_by current_user
        redirect_to posts_path
        respond_to do |format|
            format.html {}
            format.js {}
        end
    end
end
