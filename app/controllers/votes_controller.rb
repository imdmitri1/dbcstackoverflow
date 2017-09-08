post '/upvotes/:votable_type/:votable_id' do
  @vote = Vote.find_by(votable_type: params[:votable_type], votable_id: params[:votable_id], voter_id: current_user.id)
  if @vote == nil
    @vote = Vote.create(votable_type: params[:votable_type], votable_id: params[:votable_id], voter_id: current_user.id, value: 1)
  else
    @vote.update_attributes(value: 1)
  end
  redirect back
end

post '/downvotes/:votable_type/:votable_id' do
  @vote = Vote.find_by(votable_type: params[:votable_type], votable_id: params[:votable_id], voter_id: current_user.id)
  if @vote == nil
    @vote = Vote.create(votable_type: params[:votable_type], votable_id: params[:votable_id], voter_id: current_user.id, value: -1)
  else
    @vote.update_attributes(value: -1)
  end
  redirect back
end
