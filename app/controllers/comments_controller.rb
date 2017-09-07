get '/comments/:commentable_type/:commentable_id/new' do
  erb :'comments/new'
end

get '/comments/:commentable_type/:commentable_id/edit' do
  @comment = Comment.find_by(id: params[:id])
  erb :'comments/edit'
end

post '/comments/:commentable_type/:commentable_id' do
  @comment = Comment.new(commentable_type: params[:commentable_type:], commentable_id: params[:commentable_id], comment_body: params[:comment_body], commenter_id: current_user.id)
  if @comment.save
    # need to redirect to the show question page!
    redirect '/questions'
  else
    status 422
  erb :'comments/new'
  end
end

put '/comments/:commentable_type/:commentable_id' do
  @comment = Comment.find_by(commentable_type: params[:commentable_type:], commentable_id: params[:commentable_id], commenter_id: current_user.id)
  @comment.update_attributes(comment_body: params[:comment_body])
  if @comment.save
    # need to redirect to the show question page!
    redirect '/questions'
  else
    status 422
  erb :'comments/edit'
  end
end
