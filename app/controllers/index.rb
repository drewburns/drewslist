get '/' do
  @categories = Category.all
  erb :index
end

get '/category/:id' do
	@category = Category.find(params[:id])
	@posts = @category.posts
	erb :category
end
	

get '/create' do
	@categories = Category.all
	erb :create
end	

post '/create' do
	@category = Category.find(params[:category])
	@post = Post.create(category_id: @category.id, title: params[:title], 
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

post '/edit/:id' do
	@post = Post.find(params[:id])
	Post.find(params[:id]).update_attributes(body: params[:body])
	erb :index


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



