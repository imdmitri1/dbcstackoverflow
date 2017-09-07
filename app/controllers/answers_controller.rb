# New
get '/questions/question_id/answers/new' do
  @question = Question.find(params[:question_id])
  erb :'answers/new'
end

# Create
post '/questions/question_id/answers' do
  @question = Question.find(params[:question_id])
  @answer = @question.answers.new(params[:answer])
  if @answer.save
    redirect "/questions/#{@question.id}/answers"
  else
    status 422
    @errors = @answer.errors.full_messages
    erb :'answers/new'
  end
end

# Edit
get '/questions/question_id/answers/:id/edit' do
  @question = Question.find(params[:question_id])
  @answer = @question.answers.find(params[:id])
  erb :'answers/edit'
end

# Update
put '/questions/question_id/answers/:id' do
  @question = Question.find(params[:question_id])
  @answer = @question.answers.find(params[:id])
  @answer.update_attributes(params[:answer])
  if @answer.save
    redirect "/questions/#{@question.id}"
  else
    status 422
    @errors = @answer.errors.full_messages
    erb :'answers/edit'
  end
end


# Delete

delete '/questions/question_id/answers/:id' do
  @question = Question.find(params[:question_id])
  @answer = @question.answers.find(params[:id])
  @answer.destroy
  redirect "/questions/#{@question.id}"
end
