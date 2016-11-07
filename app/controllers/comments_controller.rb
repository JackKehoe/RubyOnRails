class CommentsController < ApplicationController

	before_filter :authorise
	
	def create
		@song = Song.find params[:song_id]
		@comment = @song.comment.new(comment_params)
		@comment.user_id = @current_user.id 
		@comment.save
		
		respond_to do |format|
			format.html {redirect_to @song}
		end
	end
	
	private
	def comment_params	
		params.require(:comment).permit(:content, :song_id, :user_id, :stars)
	end
	
end
