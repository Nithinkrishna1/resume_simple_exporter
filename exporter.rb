require_relative 'csv'
require_relative 'text'
module Exporter
	include Csv
	include Text
	def export(format,subjects,marks)
		puts format
		if format == 'csv'
			csv(format,subjects,marks)
		elsif format == 'txt'
			text(format,subjects,marks)
		else 
			puts "invalid selection: select the format that are listed"
		end
	end
end