class CommentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def new_comment
        request.body.rewind
        @result = JSON.parse(request.body.read)
        # byebug
        @comment = Comment.create(user_id: current_user.id, game_id: @result["game_id"], comment: @result["comment_text"])
        # {:game_id => @comment.game_id, :comment_text => @comment.comment_text}.to_json
        respond_to do |format|
            format.json {render json:{:game_id => @comment.game_id, :comment_text => @comment.comment}.to_json}
        end
    end
end