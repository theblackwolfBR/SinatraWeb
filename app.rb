require 'rubygems'
require 'sinatra'
$: << File.dirname(__FILE__)
get '/' do
        erb :index
end
get '/about' do
        @title = 'About the website'
        erb :about
end

get '/' do
        erb :home
end

get '/storage' do
        send_file('/root/dev/notes/images/'+params[:file], :disposition => 'inline')
end
