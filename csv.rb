require 'csv'
module Csv
	def csv(format,data)
		CSV.open("file.csv","wb") do |csv|
			csv << data
		end

	end
end
