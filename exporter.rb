require_relative 'csv'
require_relative 'text'
module Exporter
	include Csv
	include Text
	def export(format,data)
		puts format
		if format == 'csv'
			csv(format,data)
		elsif format == 'txt'
			text(format,data)
		else 
			puts "boi"
		end
	end
end