get '/' do
	@array = []
	 Category.all.each {|cat| @array << cat}
  erb :index
end


get '/home' do
	
	@posts = Post.where("category = ?", "home")
	erb :category
end


get '/sports' do
	@posts = Post.where("category = ?", "sports")
	erb :category
end

get '/computers' do
	@posts =Post.where("category = ?", "computers")
	erb :category
end

get '/sales' do
	@posts =  Post.where("category = ?", "sales")
	erb :category
end

get '/trades' do
	@posts = Post.where("category = ?", "trades")
	erb :category
end



get '/create' do
	erb :create
end	

post '/create' do
	@post = Post.create(id: (Post.all.size) + 1,category: params[:category]  , title:  params[:title] , body: params[:body] , edit_url: (0...10).map{ ('a'..'z').to_a[rand(10)] }.join , author: params[:author])
	erb :post
end


get '/edit/:key' do
	@key = params[:key]
	if Post.where("edit_url = ?", @key).size == 0
		erb :error
	else
		@post = Post.where("edit_url = ?", @key)
		@post = @post.first
		erb :edit
	end
end

post '/edit/:key' do
	key = params[:key]
	@post = Post.where("edit_url = ?", key )
	@post = @post.first

	@post.body = params[:body]
	@post.update
	@post.save
	erb :post
end

get '/post/:id' do
	@post = Post.where("id = ?", params[:id])
	@post = @post.first
	erb :post
end


