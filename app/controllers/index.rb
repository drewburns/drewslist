get '/' do
	@array = []
	 Category.all.each {|cat| @array << cat}
  erb :index
end

get '/home' do
	erb :home
end

get '/create' do
	@array = []
	Category.all.each {|cat| @array << cat}
	erb :create
end	

post '/create' do
	Post.create(catergory: params[:catergory_input]  , title:  params[:title_input] , body: params[:body_input] , edit_url: (0...10).map { ('a'..'z').to_a[rand(10)] }.join , author: params[:author_input])
	erb :index
end


get '/edit' do
	@key = params[:edit_key]
	if Post.where("edit_url = ?", @key).size == 0
		erb :error
	else
		erb :edit
	end

end