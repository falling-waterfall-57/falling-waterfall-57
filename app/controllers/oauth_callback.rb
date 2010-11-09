class OauthCallback < ApplicationController
  def index
    verifier = params[:oauth_verifier]
    token = params[:oauth_token]
    if token == session[:oauth_token]
      u = User.find session[:uid]
      l = Linker.new
      li_secret, li_token = l.auth_user(verifier)
      session[:li_secret] = li_secret
      session[:li_token]  = li_token
      u.linkedin_secret = li_secret
      u.linkedin_token = li_token
      u.linkedin_id = l.client.profile(:fields => ['id']).id
      u.save
    else
      #This is very, very bad
    end
    redirect_to :controller => :users, :action => 'synch_with_linkedin'
  end
  
  def start_li_call
    l = Linker.new
    render :url => l.client.request_token.authorize_url
  end
end