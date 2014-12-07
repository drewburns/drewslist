get '/' do
	# @categories = Category.all
  erb :index
end

# get '/category/:id' do
# 	@category = Category.find(params[:id])
# 	@posts = @category.posts
# 	erb :category
# end
	
	# replace these routes with the one above.
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
	# @category = Category.find(params[:category])
	@post = Post.create(category: params[:category], title: params[:title], 
											body: params[:body], author: params[:author])
	erb :post
end

get '/post/:id' do
	@post = Post.find(params[:id])
	erb :post
end

get '/edit/:id' do
	@post = Post.find(params[:id])
	erb :edit
end

# post '/edit/:key' do
# 	key = params[:key]
# 	@post = Post.where("edit_url = ?", key )
# 	@post = @post.first

# 	@post.body = params[:body]
# 	@post.update
# 	@post.save
# 	erb :post
# end



