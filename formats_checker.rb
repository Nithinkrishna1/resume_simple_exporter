module FormatChecker
	def formats_checker
		available_formats = Dir.glob("formats/*.rb")
		return available_formats
	end
end

