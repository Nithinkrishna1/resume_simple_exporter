require_relative 'exporter'
require_relative 'formats_checker'
class Reader
	def take_input
		puts "which all subjects do you attend"
		subjects=gets.chomp
		$marks =[]
		$subjects_name = subjects.split(" ")
		$subjects_name.each { |subjects| puts "enther the marks for #{subjects}" 
		mark = gets.chomp 
		$marks.push(mark) }

	end
	include FormatChecker
	include Exporter
	def format_selector
		puts "\nThe available formats are"
		puts formats_checker
		puts "select the formats to export"
		format_to_export = gets.chomp
		export(format_to_export,$subjects_name,$marks)

	end

end

p1 = Reader.new
p1.take_input
p1.format_selector