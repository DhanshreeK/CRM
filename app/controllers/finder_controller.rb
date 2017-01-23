class FinderController < ApplicationController
	def index
		@customers = Customer.all
	end
	# the @customers variable will now be acessible from
	# the automatically loaded view: app/views/finder/index.html.erb
end
