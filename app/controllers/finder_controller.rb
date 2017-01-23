class FinderController < ApplicationController
	def index
		@page_title = "All Customers"
		@customers = Customer.all
	end
	# the @customers variable will now be acessible from
	# the automatically loaded view: app/views/finder/index.html.erb


	def alphabetized
		@page_title = "Alphabetized customers"
		@customers = Customer.order(:full_name)
		render :index
	end

	def missing_email
		@page_title = "Missing_email customers"
		@customers = Customer.where(email_address:'')
		render :index
	end
end
