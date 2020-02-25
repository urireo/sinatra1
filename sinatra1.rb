require 'sinatra'
require 'sinatra/reloader'

post '/candles' do
   erb :candles
end

get '/' do
 erb:howmany
end
 
 
post "/logn" do
    params.to_s
    if params[:username]=='bob' && params[:password]=='pass'
        "SUCCESS"
    else
        "failure"
    end
end
