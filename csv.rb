require 'csv'
module Csv
	def csv(format,subjects,marks)
		CSV.open("file.csv","wb") do |csv|
			csv << subjects
			csv << marks
		end

	end
end
