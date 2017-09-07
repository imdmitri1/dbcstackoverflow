get '/users/new' do
  @user = User.new
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user]) # name, email, password
  if @user.save
    session[:user_id] = @user.id
    redirect '/index'
  else
    status 422
    erb :'users/new'
  end
end

get '/profile' do
  if current_user
    erb :'users/profile'
  else
    redirect '/sessions/new'
  end
end
