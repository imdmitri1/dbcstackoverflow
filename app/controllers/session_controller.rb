get '/sessions/new' do
  erb :'sessions/new'
end

post '/sessions' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:email],params[:password])
    session[:user_id] = @user.id
    redirect '/index'
  else
    status 401
    @errors = ["Your username or password was wrong"]
    erb :'sessions/new'
  end
end

delete '/sessions' do
  session.delete(:user_id)
  redirect '/'
end
