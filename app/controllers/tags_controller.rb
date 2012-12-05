class TagsController < ApplicationController
  def index
  	@tag = Tag.all

end


  def show
  	@tag = Tag.find(params[:id])
  	
  end
before_filter :require_login, only: [:destroy]
def destroy
  @tag=Tag.find(params[:id])
		if @tag.delete
			flash[:notice]="Hurrey! your comment is deleted"
			redirect_to :action=>'index'
	else
		render 'index'
	end

 end

end