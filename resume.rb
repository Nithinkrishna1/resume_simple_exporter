require_relative 'exporter'
require_relative 'formats_checker'
class Reader
	def take_input
		puts "enter name marks for ai cs and maths"
		$person =[]
		(0..3).each do |x|
			j=gets.chomp
			$person.push(j)
		end

	end
	include FormatChecker
	include Exporter
	def format_selector
		puts "\nThe available formats are"
		puts formats_checker
		puts "select the formats to export"
		format_to_export = gets.chomp
		export(format_to_export,$person)

	end

end

p1 = Reader.new
p1.take_input
p1.format_selector