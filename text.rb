module Text
	def text(format,data)
		
		File.open("resume.txt",'w') {|file| file.write(data)}
	end
end