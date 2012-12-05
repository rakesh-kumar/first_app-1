class ArticlesController < ApplicationController
	

	def index
		@articles = Article.all
end
def show
@article = Article.find(params[:id])
@comment = Comment.new
@comment.article_id = @article.id

	end

	def new
@article = Article.new

	end
	def create
  @articles = Article.new(params[:article])
    @articles.save
redirect_to article_path(@articles)
flash[:notice] ="Article Created"

	end
	def edit
		@articles = Article.find(params[:id])

	end
	
	before_filter :require_login, only: [:update]
	def update
    @articles = Article.find(params[:id])
    @articles.update_attributes(params[:article])
flash[:notice] = "Article '#{@articles.title}' Updated!"
    redirect_to article_path(@article)
  end

before_filter :require_login, only: [:destroy]
def destroy
  @articles=Article.find(params[:id])
		if @articles.delete
			flash[:notice]="Hurrey! your comment is deleted"
			redirect_to :action=>'index'
	else
		render 'index'
	end
end
def about_us
	end
	def contact_us
	end
	def blogger_information
	end
def me_us
	
end

end
