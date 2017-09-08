get '/comments/:commentable_type/:commentable_id/new' do
  erb :'comments/new'
end

get '/comments/:comment_id/edit' do
  @comment = Comment.find_by(id: params[:comment_id])
  erb :'comments/edit'
end

post '/comments/:commentable_type/:commentable_id' do
  @comment = Comment.new(commentable_type: params[:commentable_type], commentable_id: params[:commentable_id], comment_body: params[:comment_body], commenter_id: current_user.id)
  if @comment.save
    # need to redirect to the show question page!
    redirect '/questions'
  else
    status 422
    erb :'comments/new'
  end
end

put '/comments/:comment_id' do
  @comment = Comment.find(params[:comment_id])
  @comment.update_attributes(comment_body: params[:comment_body])
  if @comment.save
    # need to redirect to the show question page!
    redirect "/#{@comment.commentable_type}/#{@comment.commentable_id}"
  else
    status 422
    erb :'comments/edit'
  end
end

delete '/comments/:comment_id' do
  comment = Comment.find(params[:comment_id])
  question_id = params[:question_id]
  comment.destroy
  redirect "/questions/#{question_id}"
end
