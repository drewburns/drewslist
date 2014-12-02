get '/' do
	@array = []
	 Category.all.each {|cat| @array << cat}
  erb :index
end


get '/home' do
	@posts = []
	Post.where("category = ?", "home").each{|post| @posts << post}
	erb :home
end


get '/sports' do
		@posts = []
	Post.where("category = ?", "sports").each{|post| @posts << post}
	erb :sports
end

get '/computers' do
		@posts = []
	Post.where("category = ?", "computers").each{|post| @posts << post}
	erb :computers
end

get '/sales' do
		@posts = []
	Post.where("category = ?", "sales").each{|post| @posts << post}
	erb :sales
end

get '/trades' do
	@posts = []
	Post.where("category = ?", "trades").each{|post| @posts << post}
	erb :trades
end

get '/:post_id'
	
end

get '/create' do
	erb :create
end	

post '/create' do
	Post.create(id: (Post.all.size) + 1,category: params[:category]  , title:  params[:title] , body: params[:body] , edit_url: (0...10).map{ ('a'..'z').to_a[rand(10)] }.join , author: params[:author])
	erb :index
end


get '/:edit' do
	@key = params[:edit_key]
	if Post.where("edit_url = ?", @key).size == 0
		erb :error
	else
		erb :edit
	end

end