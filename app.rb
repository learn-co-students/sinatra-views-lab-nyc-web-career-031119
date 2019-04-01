class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		erb :goodbye
	end

	get '/date' do
		current_date_and_time = Time.new
		day = current_date_and_time.ctime.split.first
		@current_day = day + "day"
		if current_date_and_time.mon == 1
			@current_month = "January"
		elsif current_date_and_time.mon == 2
			@current_month = "February"
		elsif current_date_and_time.mon == 3
			@current_month = "March"
		elsif current_date_and_time.mon == 4
			@current_month = "April"
		elsif current_date_and_time.mon == 5
			@current_month = "May"
		elsif current_date_and_time.mon == 6
			@current_month = "June"
		elsif current_date_and_time.mon == 7
			@current_month = "July"
		elsif current_date_and_time.mon == 8
			@current_month = "August"
		elsif current_date_and_time.mon == 9
			@current_month = "September"
		elsif current_date_and_time.mon == 10
			@current_month = "October"
		elsif current_date_and_time.mon == 11
			@current_month = "November"
		elsif current_date_and_time.mon == 12
			@current_month = "December"
		end

		if current_date_and_time.day < 10
			@current_date = "0" + current_date_and_time.day.to_s
		else
			@current_date = "0" + current_date_and_time.day
		end
		
		@current_year = current_date_and_time.year
		erb :date
	end

end
