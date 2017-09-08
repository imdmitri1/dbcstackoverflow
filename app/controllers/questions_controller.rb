# Index
get '/questions' do
  @questions = Question.all
  erb :'/questions/index'
end

# New
get '/questions/new' do
  erb :'/questions/new'
end

# Create
post '/questions' do
  @question = Question.new(params[:question])
  if @question.save
    redirect '/questions'
  else
    status 422
    @errors = @question.errors.full_messages
    erb :'/questions/new'
  end
end

# Show
get '/questions/:id' do
  @question = Question.find(params[:id])
  @question.add_view_count
  @question.save
  erb :'/questions/show'
end

# Edit
get '/questions/:id/edit' do
  @question = Question.find(params[:id])
  erb :'/questions/edit'
end

# Update
put '/questions/:id' do
  @question = Question.find(params[:id])
  @question.update_attributes(params[:question])
  if @question.save
    redirect '/questions'
  else
    status 422
    @errors = @question.errors.full_messages
    erb :'questions/edit'
  end
end


# Delete

delete '/questions/:id' do
  @question = Question.find(params[:id])
  @question.destroy
  redirect '/questions'
end
