class PagesController < ApplicationController
	before_action :require_user, only: [:new, :edit, :create, :destroy ]
	before_action :require_editor, only: [:new, :edit, :create, :destroy]

	def welcome
	end

	def about
	end

	def contact
	end

	def index
		@pages = Page.all
	end

	def show
		@page = Page.find(params[:id])
	end

	def new
		@page = Page.new
	end

	def create
		@page = Page.new(page_params)
		if @page.save
			redirect_to '/pages', notice: "The project #{@page.title} has been uploaded to your profile"
		else
			render 'new'
		end
	end

	def destroy
		@page = Page.find(params[:id])
		@page.destroy
		redirect_to '/pages', notice: "Then project #{@page.title} has been deleted from your profile"

	end

	def edit
    @page = Page.find(params[:id])
  end

	def update
		@page = Page.find(params[:id])
		if @page.update(page_params)
			redirect_to :action => 'index'
		end
	end

	private
	def page_params
		params.require(:page).permit(:cover, :title, :description)
	end
end
